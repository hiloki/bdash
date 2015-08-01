'use strict'
# Include Gulp libraries
gulp = require 'gulp'
$ = do require 'gulp-load-plugins'

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
  .pipe gulp.dest './docs/assets/css'

# Minify Stylesheets
gulp.task 'style:minify', ->
  gulp.src './css/bdash.css'
  .pipe $.minifyCss()
  .pipe $.rename {suffix: '.min'}
  .pipe $.size {title: 'min'}
  .pipe gulp.dest './css'

# Generate Style guides
gulp.task 'default', ['style', 'style:minify', 'style:docs']
