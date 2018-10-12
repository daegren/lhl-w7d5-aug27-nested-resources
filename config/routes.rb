Rails.application.routes.draw do
  resources :owners do
    resources :dogs
  end

  namespace :admin do
    resources :dogs, only: [:index, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
