Rails.application.routes.draw do
  resources :posts do
    resources :comments, except: [:index, :new, :show] do
      member do
        get :reply
      end
    end
  end
  # 이거랑 위에꺼 전혀 다른 routes
#  resources :posts do
#    resources :comments
#      member do
#        get :reply
#      end
#  end
  
#  resources :posts do
#    resources :comments, module: :posts
#  end



  devise_for :users, controllers: { registrations: 'users/registrations' }
end
