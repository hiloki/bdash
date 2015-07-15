var postcss = require('postcss')
var gulp    = require('gulp')
var size    = require('gulp-size')


var src     = './src/main/webapp'
var config  = {
  postcss: {
    src:  src + '/postcss/main.css',
    dest: src + '/css'
  }
}


gulp.task('style', function(){
  return gulp.src(config.postcss.src)
    .pipe( postcss([
      require('postcss-simple-vars'),
      require('postcss-mixins'),
      require('postcss-nested'),
      require('postcss-import'),
      require('postcss-will-change'),
      require('autoprefixer')({ browsers: ['last 1 versions'] })
    ])
    .pipe( gulp.dest(config.postcss.dest) )
    .pipe( gulp.size({title: 'styles'}) )
})
