class FTBPro.Views.base extends Backbone.View
  template: null
  el: null
  model: null
  collection: null

  initialize: ->
    this.bindings()
    this._postInitialize()
    _.bindAll this
    throw 'template is undefined' unless @template
    throw 'template is el' unless @el

  _postInitialize: ->
    @postInitialize()
    @trigger('initialize')

  getRenderData: ->
    return @model.toJSON() if @model
    return @collection.toJSON() if @collection
    return {}

  getTemplate: (obj)->
    JST[this.template](obj) if @template && JST

  getHtml: ->
    @getTemplate(@getRenderData()) || ''

  render: ->
    this.$el.html(this.getHtml())
    @trigger('render')
    @postRender()
    return this

  load: (view, data) ->
    @renderData(view, data)
    @render()

  renderData: (view, data) ->
    @model = new FTBPro.Models[view.model](data) if view.model
    @collection = new FTBPro.Models[view.collection](data) if view.collection

  cleanup: ->
    @dispose()
    @remove()
    return this

  dispose: ->
    @undelegateEvents()
    @model.off(null, null, this) if @model
    @collection.off(null, null, this) if @collection
    return this

  postInitialize: -> null
  postRender: -> null
  bindings: -> null
  getRequest: -> null
