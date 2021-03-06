Rails.application.routes.draw do
  
  namespace :api, path: "", defaults: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :missions,        only: [:index, :show, :create, :update]
      resources :art_pieces,      only: [:index, :show, :create, :update]
      resources :users,           only: [:index, :show, :create, :update]
      resources :leaderboards,    only: [:index, :show, :create, :update]
    end
  end
end
