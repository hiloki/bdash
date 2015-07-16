gulp    = require('gulp');
size    = require('gulp-size');
postcss = require('gulp-postcss');

gulp.task 'style', () ->
  gulp.src './postcss/main.css'
    .pipe postcss([
      require('postcss-simple-vars'),
      require('postcss-mixins'),
      require('postcss-nested'),
      require('postcss-import'),
      require('postcss-will-change'),
      require('autoprefixer')({ browsers: ['last 2 versions'] })
    ])
    .pipe size({title: 'style'})
    .pipe gulp.dest('./dist')

gulp.task 'minify', () ->
  rename = require("gulp-rename");
  gulp.src('./dist/main.css')
    .pipe postcss([ require('cssnano')() ])
    .pipe rename({ extname: '.min.css'})
    .pipe size({title: 'minify'})
    .pipe gulp.dest('./dist')
