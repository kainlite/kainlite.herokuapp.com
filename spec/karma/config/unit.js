// Karma configuration
// Generated on Mon Feb 03 2014 16:16:15 GMT+0100 (CET)

module.exports = function(config) {
  config.set({

    // base path, based on tmp/ folder
    basePath: '../',


    // frameworks to use
    frameworks: ['jasmine'],
    // frameworks: ['jasmine', 'ng-scenario'],


    // list of files / patterns to load in the browser
    files: [
      'http://code.jquery.com/jquery-1.9.1.min.js',
      'spec/javascripts/helpers/jasmine-jquery.js',
      'http://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.min.js',
      'http://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-resource.min.js',
      'vendor/assets/javascripts/angular-mocks.js',
      'vendor/assets/javascripts/ui-bootstrap.js',
      'vendor/assets/javascripts/dialogs.js',
      'app/assets/javascripts/app.js.coffee',
      'app/assets/javascripts/**/*.{js,coffee}',
      'app/assets/javascripts/angular/**/*.{js,coffee}',
      'spec/javascripts/**/*_spec.{js,coffee}',
      ],

      // list of files to exclude
      exclude: [],


      // test results reporter to use
      // possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
      reporters: ['progress'],


      // web server port
      port: 9876,


      // enable / disable colors in the output (reporters and logs)
      colors: true,


      // level of logging
      // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
      logLevel: config.LOG_INFO,


      // enable / disable watching file and executing tests whenever any file changes
      autoWatch: true,


      // Start these browsers, currently available:
      // - Chrome
      // - ChromeCanary
      // - Firefox
      // - Opera (has to be installed with `npm install karma-opera-launcher`)
      // - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
      // - PhantomJS
      // - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
      browsers: ['PhantomJS'],


      // If browser does not capture in given timeout [ms], kill it
      captureTimeout: 60000,


      // Continuous Integration mode
      // if true, it capture browsers, run tests and exit
      singleRun: false,

      // Plugins
      plugins: ['karma-jasmine', 'karma-phantomjs-launcher', 'karma-coverage', 'karma-coffee-preprocessor'],

      // Preprocessors
      preprocessors: {
        './**/*.coffee' : ['coffee'],
        'assets/javascripts/*.coffee' : ['coffee']
        },


        coffeePreprocessor: {
          // options passed to the coffee compiler
          options: {
            bare: true,
            sourceMap: false
          },
          // transforming the filenames
          transformPath: function(path) {
            return path.replace(/\.coffee$/, '');
          }
        }

      });
    };
