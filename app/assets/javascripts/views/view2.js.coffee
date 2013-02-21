class FTBPro.Views.view2 extends Backbone.View
  template: JST["templates/view2"]
  el: $('[data-view=view2]')

  initialize: ->
    console.log 'initialize'

  getRequest: ->
    console.log 'getRequest'
    {id: 2}

  render: () ->
    console.log 'render'
    data =
      title: 'view2 title'
      text: 'view2 text'
    this.$el.html(@template(data))
