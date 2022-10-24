Rails.application.routes.draw do
  get 'monster/new'
  resources :monsters, only: [:index, :update, :create, :edit, :new, :show]

  root "monsters#index"
end
