Rails.application.routes.draw do
  resources :rolls, only: [:new, :create]
  root 'rolls#new'
  get 'about' => 'static_pages#about'
end
