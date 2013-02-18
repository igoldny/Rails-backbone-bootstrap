require.config
    paths:
        jquery: 'vendor/jquery/jquery'
        'lodash': 'vendor/lodash/lodash'
        backbone: 'vendor/backbone-amd-lodash/backbone'

require ['application', 'jquery', 'lodash', 'backbone'], (application, $, _, backbone) ->
    'use strict'
    console.log(application)
    console.log('Running jQuery %s', $().jquery)
    console.log(_)
    console.log(backbone)

