Ftbpro::Application.routes.draw do
  root :to => 'main#show'
  match 'pipe' => 'main#pipe'
end
