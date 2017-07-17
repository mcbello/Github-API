Rails.application.routes.draw do


  devise_for :users

  # root 'users#sign_up'
  #
  # get 'github/index'
  # get 'users/sign_in'

  get '/users/:id' => 'users#show', :as => :user
  get '/github/index' => 'github#index'

 devise_scope :user do
   get "/" => "devise/sessions#create"
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
