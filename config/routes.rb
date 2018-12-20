Rails.application.routes.draw do
  resources :unit_instructors
  root to: 'home#index'

  devise_for :users, controllers: {
    # Override the following Devise controllers with our custom versions
    registrations: 'users/registrations'
  }

  namespace :admin do
    resources :users
  end

  # form_for is easier to use with a resourceful route
  resources :contact_forms, only: [:create]
  resources :courses
  resources :deliveries
  resources :lead_quals, only: [:create, :update, :destroy]
  # A non-resourceful route was used to place the contact form at /contact
  get 'contact' => 'contact_forms#new', as: 'contact'

  # for commontator
  mount Commontator::Engine => '/commontator'
end
