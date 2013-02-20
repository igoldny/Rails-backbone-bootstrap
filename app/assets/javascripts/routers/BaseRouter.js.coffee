class FTBPro.Routers.Application extends Backbone.Router
  routes: {}

  initialize: (options) ->
    @container = options.container
    @overlay = options.overlay
    @loading = options.loading
    @renderLayout()

  renderLayout: ->
    _.map FTBPro.Layouts, (page) =>
      @route page.url, page.name, =>
        @loadLayoutsWithModels(page.views).slidePage(page.name)

  loadLayoutsWithModels: (options) ->
    allModels = []
    existingModels = []

    # unsubscribe Refresh
    DataSource.unsubscribeRefresh()
    @viewsList = []

    _.each options.layouts, (widget) =>
      opts = $.extend(true, {}, options)
      allModels.push(widget.model) if widget.model #save each model

      # save the models that we have
      # to remove them from the future list
      # and the one we have in cache load
      existingModels.push DataSource.getModel widget.model, widget.expires, (modelData)->
        opts.modelName = widget.model
        opts.data = modelData
        @viewsList.push @renderPageOrView(widget, opts)

    # get the missing models from the server
    # and after we get the data load the widgets with the data
    DataSource.getMissingModels(allModels, existingModels)
    return this

  renderPageOrView: (widget, options) ->
    if widget.page
      new Views[widget.page][widget.view](opts)
    else
      new Views[widget.view](opts)

  slidePage: ($page) ->
    $visiblePage = $('.page:visible')
    if $visiblePage.length > 0
      $visiblePage.fadeOut "fast", ->
        $page.fadeIn("fast")
    else
      $page.show()
    return this
