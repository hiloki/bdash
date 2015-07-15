var gulp    = require('gulp');
var size    = require('gulp-size');

gulp.task('style', function() {
  var postcss = require('gulp-postcss');
  return gulp.src('./postcss/main.css')
    .pipe( postcss([
      require('postcss-simple-vars'),
      require('postcss-mixins'),
      require('postcss-nested'),
      require('postcss-import'),
      require('postcss-will-change'),
      require('autoprefixer')({ browsers: ['last 1 versions'] })
    ]) )
    .pipe(size())
    .pipe(gulp.dest('./dist'));
});
