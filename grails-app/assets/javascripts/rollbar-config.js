// Configuration for rollbar error reporting

var _rollbarConfig = {
    accessToken: GRAILS_APP.rollbarApiKey,
    captureUncaught: true,
    captureUnhandledRejections: true,
    payload: {
        environment: GRAILS_APP.environment
    }
};
