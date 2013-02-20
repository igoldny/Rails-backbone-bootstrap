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

  loadLayoutsWithModels: (pageViews) ->
    @renderWithModelsFor pageViews, @aggregateRequests(pageViews), (view, model) ->
      @views[view].render(model)
    return this

  renderWithModelsFor: (pageViews, request, callback) ->
    $.ajax({
      url: '/pipe',
      data: request,
      cache: false,
    }).success((data) ->
      _.each pageViews, (view) ->
        callback(view.name, data[view.model]) if callback
    ).error((jqXHR, textStatus, errorThrown) ->
      throw errorThrown if jqXHR.status
    )

  aggregateRequests: (pageViews)->
    @views = {}
    _.map pageViews, (view) ->
      views[view.name] = new FTBPro.Views[view.name]()
      views[view.name].getRequest()

  slidePage: (page) ->
    $page = $("[data-page=#{page}]")
    $visiblePage = $('.page:visible')
    if $visiblePage.length > 0
      $visiblePage.fadeOut "fast", ->
        $page.fadeIn("fast")
    else
      $page.show()
    return this
