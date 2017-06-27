Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root :to => 'courses#index'
  resources :courses do
    resources :weeks do
      resources :lessons
    end
  end
end
