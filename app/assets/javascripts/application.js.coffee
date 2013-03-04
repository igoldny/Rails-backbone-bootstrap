#= require jquery/jquery.js
#= require lodash/lodash.js
#= require backbone/backbone.js
#= require_tree ./plugins
#= require jade/runtime
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
