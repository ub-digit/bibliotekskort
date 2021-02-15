/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'frontend',
    environment: environment,
    baseURL: '',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },


    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  let backend_service_proto = 'https';

  if (environment === 'development') {
    backend_service_proto = 'http';
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
  }
  else {
    ENV.APP.serviceURL = backend_service_proto + '://' + process.env.BACKEND_SERVICE_HOSTNAME;
    if (process.env.BACKEND_SERVICE_PORT) {
      ENV.APP.serviceURL = ENV.APP.serviceURL + ':' + process.env.BACKEND_SERVICE_PORT;
    }
  }

  ENV.contentSecurityPolicy = {
    'default-src': "'none'",
    'font-src': "'self' webresources.gu.se",
    'img-src': "'self'",
    'style-src': "'self'",
    'style-src': "'self' 'unsafe-inline'",
    'report-uri': "/"
  };

  ENV.i18n = {
      defaultLocale: 'sv'
  }

  return ENV;
};
