var gulp    = require('gulp');
var size    = require('gulp-size');
var postcss = require('gulp-postcss');

gulp.task('style', function() {
  return gulp.src('./postcss/main.css')
    .pipe( postcss([
      require('postcss-simple-vars'),
      require('postcss-mixins'),
      require('postcss-nested'),
      require('postcss-import'),
      require('postcss-will-change'),
      require('autoprefixer')({ browsers: ['last 1 versions'] })
    ]) )
    .pipe( size({title: 'style'}) )
    .pipe(gulp.dest('./dist'))
})

gulp.task('minify', function() {
  var rename = require("gulp-rename");
  return gulp.src('./dist/main.css')
    .pipe( postcss([ require('cssnano')() ]))
    .pipe( rename({ extname: '.min.css'}))
    .pipe( size({title: 'minify'}) )
    .pipe(gulp.dest('./dist'))
})
