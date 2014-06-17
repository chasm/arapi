Arapi::Application.routes.draw do
  # root 'welcome#index'

  get 'uuids'      => 'uuids#create'
  get 'uuids/:num' => 'uuids#create'
end
