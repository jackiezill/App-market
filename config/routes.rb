Rails.application.routes.draw do
  namespace :api do
    get 'apps/index'
    get 'apps/create'
    get 'apps/update'
    get 'apps/destroy'
    get 'apps/show'
  end
  get 'create/update'
  get 'create/destroy'
  get 'create/edit'
  get 'create/show'
  get 'create/index'
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    #API ROUTES SHOULD GO HERE
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
