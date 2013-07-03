Crm::Application.routes.draw do

  devise_for :users , :controllers => { :registrations => "users/registrations" }
  match 'users/all' => "users#all"
  get "profile(/:id)" , to: "users#profile" , as: :profile
  match 'search' => "users#search"


  authenticated do 
    root to: 'dashboard#index'
  end

  root to: "static_page#landing" 

end
