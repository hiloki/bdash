'use strict'


# Include Gulp libraries
gulp = require 'gulp'
$ = require('gulp-load-plugins')();


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
  .pipe gulp.dest './dist'


# Minify Stylesheets
gulp.task 'min', ->
  gulp.src './dist/bdash.css'
  .pipe $.minifyCss()
  .pipe $.rename {suffix: '.min'}
  .pipe $.size {title: 'min'}
  .pipe gulp.dest './dist'
