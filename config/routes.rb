Arapi::Application.routes.draw do
  # root 'welcome#index'

  get 'uuids'      => 'uuids#create'
  get 'uuids/:num' => 'uuids#create'

  scope :articles, defaults: { format: :json } do
    get    ''     => 'articles#index'
    get    ':ids' => 'articles#index'
    put    ':id'  => 'articles#create_or_replace'
    patch  ':id'  => 'articles#update'
    delete ':id'  => 'articles#destroy'
  end

  scope :duties, defaults: { format: :json } do
    get    ''     => 'duties#index'
    get    ':ids' => 'duties#index'
    put    ':id'  => 'duties#create_or_replace'
    patch  ':id'  => 'duties#update'
    delete ':id'  => 'duties#destroy'
  end
end
