Rails.application.routes.draw do
  resources :posts do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
