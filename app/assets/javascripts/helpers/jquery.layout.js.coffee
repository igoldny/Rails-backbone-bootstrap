$.fn.layout = () ->
  layout = {}
  $(this).find('[data-page]').each (i, page) ->
    $page = $(page)
    views = []
    pageName = $page.data('page')
    url = $page.data('url')

    $page.find('[data-view]').each (i, view) ->
      $view = $(view)
      viewName = $view.data('view')
      model = $view.data('model')
      views.push {
        model: model
        view: viewName
      }

      layout[pageName] =
        url: url
        views: views

  return layout
