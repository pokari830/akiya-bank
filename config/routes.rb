Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'akiyas#index'
  resources :akiyas, only: [:index, :new, :show, :create, :edit, :update, :delete] do
    collection do
      get 'search'
    end
  end
end
