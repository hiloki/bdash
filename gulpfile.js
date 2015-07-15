var postcss = require('postcss')
var gulp    = require('gulp')
var size    = require('gulp-size')

gulp.task('style', function(){
  return gulp.src('app/styles/main.scss')
    .pipe( postcss([
      require('postcss-mixins'),
      require('postcss-simple-vars'),
      require('postcss-nested'),
      require('postcss-import'),
      require('postcss-will-change'),
      require('autoprefixer')({ browsers: ['last 1 versions'] })
    ])
    .pipe( gulp.size({title: 'styles'}) )
})
