var psotcss = require('postcss')
var gulp    = require('gulp')

gulp.task('style', function(){
  return gulp.src('app/styles/main.scss')
    .pipe( postcss([
      require('postcss-nested'),
      require('postcss-mixins'),
      require('postcss-simple-vars'),
      require('postcss-import'),
      require('postcss-will-change'),
      require('autoprefixer')
    ])
})
