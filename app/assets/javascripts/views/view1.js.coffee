class FTBPro.Views.view1 extends Backbone.View
  template: JST["templates/view1"]
  el: $('[data-view=view1]')

  initialize: ->
    console.log 'initialize'

  getRequest: ->
    console.log 'getRequest'
    {id: 1}

  render: () ->
    console.log 'render'
    data =
      title: 'view1 title'
      text: 'view1 text'
    this.$el.html(@template(data))
