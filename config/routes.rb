Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
