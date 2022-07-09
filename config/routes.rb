Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  # devise_for :users,
  #            controllers: {
  #                sessions: 'users/sessions',
  #                registrations: 'users/registrations'
  #            }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
  get "referral", to: "dashboard#referral"
  get "referral_mail", to: "dashboard#referral_mail"

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
end
