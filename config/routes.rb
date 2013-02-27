Ftbpro::Application.routes.draw do
  root :to => 'main#show'
  match 'ui-kit' => 'main#uikit'
  match 'pipe' => 'main#pipe'
end
