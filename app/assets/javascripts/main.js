require.config({
    paths: {
        jquery: 'vendor/jquery/jquery',
        bootstrap: 'vendor/bootstrap'
    },
    shim: {
        bootstrap: {
            deps: ['jquery'],
            exports: 'jquery'
        }
    }
});

require(['application', 'jquery', 'bootstrap'], function (application, $) {
    'use strict';
    // use application here
    console.log(application);
    console.log('Running jQuery %s', $().jquery);
});
