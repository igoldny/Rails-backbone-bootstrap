#= require ./vendor/jquery/jquery.js
#= require ./vendor/lodash/lodash.js
#= require ./vendor/backbone/backbone.js
#= require handlebars
#= require_tree ./plugins

#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers
#= require_tree ./helpers

window.FTBPro =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  Helpers: {}
  Application: {}
  Layouts: $('#main').layout()

$ ->
  window.FTBPro.Application = new FTBPro.Routers.Application
  Backbone.history.start({pushState: true})
