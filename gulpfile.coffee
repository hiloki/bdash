'use strict'
# Include Gulp libraries
gulp = require 'gulp'
$ = require('gulp-load-plugins')()

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
gulp.task 'stylus', ->
  gulp.src './stylus/bdash.styl'
  .pipe $.sourcemaps.init()
  .pipe $.stylus()
  .pipe $.csscomb()
  .pipe $.autoprefixer(AUTOPREFIXER_BROWSERS)
  .pipe $.sourcemaps.write('.')
  .pipe $.size {title:  'stylus'}
  .pipe gulp.dest './css'

# Minify Stylesheets
gulp.task 'min', ->
  gulp.src './css/bdash.css'
  .pipe $.minifyCss()
  .pipe $.rename {suffix: '.min'}
  .pipe $.size {title: 'min'}
  .pipe gulp.dest './css'

# Deploy docs page in gh_page
gulp.task 'deploy', ->
  gulp.src('./docs/')
  .pipe $.ghPages()

# Generate Style guides
gulp.task 'default', ['stylus', 'min']
