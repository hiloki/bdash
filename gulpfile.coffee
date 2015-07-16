gulp = require('gulp')
size = require('gulp-size')
postcss = require('gulp-postcss')
stylus = require('gulp-stylus')
rename = require("gulp-rename")
poststylus = require('poststylus')
minify = require('gulp-minify-css')
cssstats = require('postcss-cssstats')
autoprefixer = require('autoprefixer')


gulp.task 'stylus', () ->
  gulp.src './stylus/main.styl'
  .pipe stylus({
    use: [
      poststylus([ 'autoprefixer' ])
    ]
  })
  .pipe size {title:  'stylus'}
  .pipe gulp.dest './dist'


gulp.task 'min', () ->
  gulp.src './dist/main.css'
  .pipe minify()
  .pipe rename {suffix: '.min'}
  .pipe size {title: 'min'}
  .pipe gulp.dest './dist'


gulp.task 'stats', () ->
  gulp.src '.dist/main.css'
  .pipe postcss([
      cssstats (stats) ->
          console.log(stats)
      ])
