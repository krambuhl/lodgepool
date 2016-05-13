const gulp = require('gulp');
const del = require('del');
const sequence = require('run-sequence').use(gulp);
const sourcemaps = require('gulp-sourcemaps');

// styles
const postcss = require('gulp-postcss');
const autoprefixer = require('autoprefixer-core');

// elm
const elm = require('gulp-elm');

gulp.task('clean', function(done) {
  del('dist').then(() => done())
});

gulp.task('styles', function() {
  return gulp.src('source/styles/*.css')
    .pipe(sourcemaps.init())
    .pipe(postcss([
      autoprefixer({ browsers: ['last 2 version'] })
    ]))
    .pipe(sourcemaps.write('.'))
    .pipe(gulp.dest('dist/assets'))
});

gulp.task('elm-init', elm.init);
gulp.task('elm', function() {
  return gulp.src('source/**/*.elm')
    // .pipe(elm({ filetype: 'html', warn: true }))
    .pipe(gulp.dest('dist'));
});

gulp.task('assets', function() {
  return gulp.src('source/assets/**/*')
    .pipe(gulp.dest('dist/assets'));
});


// main tasks

gulp.task('watch', function() {
  gulp.watch('source/**/*.css', ['styles']);
  gulp.watch('source/**/*.elm', ['elm']);
  gulp.watch('source/assets/**/*', ['assets']);
});

gulp.task('build', function(done) {
  sequence(['styles', 'elm', 'assets'], done);
});

gulp.task('default', function(done) {
  sequence('clean', 'build', done);
});