Rails.application.routes.draw do
  root 'static_pages#home'
  # get '/home', 		to: 'static_pages/home'
  get '/help', 		to: 'static_pages#help'
  get '/about', 	to: 'static_pages#about'
  get '/contact', 	to: 'static_pages#contact'
  # get '/signup',	to: 'users#new'   

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path:'users', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  # devise_for :users, controllers: { sessions: 'users/sessions' }

end
