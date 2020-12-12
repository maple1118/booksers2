Rails.application.routes.draw do
devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
}
  root to: 'homes#top'
  resources :books
  resources :users
  get '/home/about', to: 'homes#about'
end
