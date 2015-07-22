'use strict'
# Include Gulp libraries
gulp     = require 'gulp'
cp       = require 'child_process'
critical = require 'critical'
$        = require('gulp-load-plugins')()

AUTOPREFIXER_BROWSERS = [
  'ie >= 10',
  'ie_mob >= 10',
  'ff >= 30',
  'chrome >= 34',
  'safari >= 7',
  'opera >= 23',
  'ios >= 7',
  'android >= 4.4',
  'bb >= 10'
]

# Transpile and Automatically Prefix Stylesheets
gulp.task 'style', ->
  gulp.src './stylus/bdash.styl'
  .pipe $.sourcemaps.init()
  .pipe $.stylus()
  .pipe $.csscomb()
  .pipe $.autoprefixer(AUTOPREFIXER_BROWSERS)
  .pipe $.sourcemaps.write('.')
  .pipe $.size {title:  'style'}
  .pipe gulp.dest './css'

# Transpile and Automatically Prefix Stylesheets for style guide
gulp.task 'style:docs', ->
  gulp.src './stylus/bdash.styl'
  .pipe $.sourcemaps.init()
  .pipe $.stylus()
  .pipe $.csscomb()
  .pipe $.autoprefixer(AUTOPREFIXER_BROWSERS)
  .pipe $.minifyCss()
  .pipe $.sourcemaps.write('.')
  .pipe $.size {title:  'style:docs'}
  .pipe gulp.dest './docs/css'

# Minify Stylesheets
gulp.task 'style:minify', ->
  gulp.src './css/bdash.css'
  .pipe $.minifyCss()
  .pipe $.rename {suffix: '.min'}
  .pipe $.size {title: 'min'}
  .pipe gulp.dest './css'

# Critical CSS
gulp.task 'style:critical', ->
  critical.generate({
    base: 'docs/_site/',
    src:  'docs/index.html'
    dest: 'docs/css/critical.min.css',
    width: 1200,
    height: 900,
    minify: true
  })

# Build Jekyll
gulp.task 'jekyll:build', (done) ->
  return cp.spawn('jekyll', ['build'], {stdio: 'inherit'})
    .on('close', done)

# Deploy docs page in gh_page
gulp.task 'jekyll:deploy', ->
  gulp.src('./docs/_site')
  .pipe $.ghPages()

# Generate Style guides
gulp.task 'default', ['style', 'min']
