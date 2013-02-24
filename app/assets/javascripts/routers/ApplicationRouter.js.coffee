class FTBPro.Routers.Application extends Backbone.Router
  routes: {}

  initialize: (options) ->
    @renderLayout()

  renderLayout: ->
    _.map FTBPro.Layouts, (page) =>
      @route page.url, page.name, =>
        @loadLayoutsWithModels(page.views).slidePage(page.name)

  loadLayoutsWithModels: (pageViews) ->
    @renderWithModelsFor pageViews, @aggregateRequests(pageViews), (view, model) =>
      @views[view.name].load(view, model)

  renderWithModelsFor: (pageViews, request, callback) ->
    $.ajax({
      url: '/pipe',
      type: 'POST',
      data: request,
      cache: false,
    }).success((data) ->
      _.each pageViews, (view) ->
        callback(view, data[view.model]) if callback
    ).error((jqXHR, textStatus, errorThrown) ->
      throw errorThrown if jqXHR.status
    )
    return this

  aggregateRequests: (pageViews)->
    @views = {}
    requests = {}
    _.map pageViews, (view) =>
      @views[view.name] = new FTBPro.Views[view.name]
      requests[view.model] = @views[view.name].getRequest()
    requests

  slidePage: (page) ->
    $page = $("[data-page=#{page}]")
    $visiblePage = $('.page:visible')
    if $visiblePage.length > 0
      $visiblePage.fadeOut "fast", ->
        $page.fadeIn("fast")
    else
      $page.show()
    return this
