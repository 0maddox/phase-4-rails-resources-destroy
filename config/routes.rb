Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  patch "/birds/:id/like", to: "birds#increment_likes"
  resources :birds, only: [:index, :show, :create, :update, :destroy]
  resources :birds
end
