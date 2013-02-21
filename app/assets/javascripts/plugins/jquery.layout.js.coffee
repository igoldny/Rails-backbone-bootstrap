$.fn.layout = () ->
  layout = {}
  $(this).find('[data-page]').each (i, page) ->
    $page = $(page)
    views = []
    pageName = $page.data('page')
    url = $page.data('url')

    $page.find('[data-view]').each (i, view) ->
      $view = $(view)
      name = $view.data('view')
      model = $view.data('model')
      views.push {
        model: model
        name: name
      }

      layout[pageName] =
        name: pageName
        url: url
        views: views

  return layout
