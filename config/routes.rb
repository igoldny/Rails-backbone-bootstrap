Ftbpro::Application.routes.draw do
  root :to => 'main#show'
  match 'ui-kit' => 'main#uikit'
  match 'pipe' => 'main#pipe'
  match 'post/:id' => 'post#post'
end
