class FTBPro.Views.view2 extends Backbone.View
  el: $('[data-view=view2]')

  initialize: ->
    console.log 'initialize'

  getRequest: ->
    console.log 'getRequest'
    {id: 2}

  render: () ->
    console.log 'render'

