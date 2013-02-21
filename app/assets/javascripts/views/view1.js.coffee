class FTBPro.Views.view1 extends Backbone.View
  template: JST["templates/view1"]
  el: $('[data-view=view1]')

  initialize: ->
    console.log 'initialize'

  getRequest: ->
    console.log 'getRequest'
    {id: 1}

  render: (data) ->
    console.log 'render'
    @model = new FTBPro.Models['model1'](data)
    this.$el.html(@template(@model.toJSON(data)))
