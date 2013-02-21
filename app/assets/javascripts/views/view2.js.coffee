class FTBPro.Views.view2 extends Backbone.View
  template: JST["templates/view2"]
  el: $('[data-view=view2]')

  initialize: ->
    console.log 'initialize'
    _.bindAll this

  getRequest: ->
    console.log 'getRequest'
    {id: 2}

  render: (data) ->
    console.log 'render'
    @model = new FTBPro.Models['model2'](data)
    this.$el.html(@template(@model.toJSON(data)))
