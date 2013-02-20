#= require ./vendor/jquery/jquery.js
#= require ./vendor/lodash/lodash.js
#= require ./vendor/backbone/backbone.js
#= require_tree ./helpers

#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.FTBPro =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  Helpers: {}
  Application: {}
  Layouts: $('#main').layout()

$ ->
  window.FTBPro.Application = new FTBPro.Routers.Application({
    container: $('#container')
    overlay: $('#overlay')
    loading: $('#loading')
  })
  Backbone.history.start({pushState: true})
