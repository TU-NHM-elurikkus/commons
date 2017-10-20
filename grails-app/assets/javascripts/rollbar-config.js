// Configuration for rollbar error reporting

var _rollbarConfig = {
    accessToken: '',  //TODO - get this from somewhere that's not in (public)repository
    captureUncaught: true,
    captureUnhandledRejections: true,
    payload: {
        environment: 'localhost'  //TODO - make this dependant of the actual environment
    }
};
