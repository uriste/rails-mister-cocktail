Rails.application.routes.draw do
  resources :cocktails, only: [:create, :index, :destroy, :show, :new] do
    resources :doses, only: [:new, :create, :destroy, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
