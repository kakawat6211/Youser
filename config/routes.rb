Rails.application.routes.draw do

  resources :users do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    get :home, on: :member
  end

end