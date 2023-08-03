Rails.application.routes.draw do
  namespace 'api' do
    resources :posts, only: [:index, :show, :create, :update, :destroy] do
      resources :replies, only: [:index, :create]
    end
    resources :replies, only: [:show, :update, :destroy]
  end
end