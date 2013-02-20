class FTBPro.Views.view1 extends Backbone.View
  el: $('[data-view=view1]')

  initialize: ->
    console.log 'initialize'

  getRequest: ->
    console.log 'getRequest'
    {id: 1}

  render: () ->
    console.log 'render'
