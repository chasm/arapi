Arapi::Application.routes.draw do
  resources :jobs

  resources :duties

  resources :comments

  resources :tags

  resources :articles

  # root 'welcome#index'
end
