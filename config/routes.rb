Rails.application.routes.draw do
  get '/search', to: 'searchs#search'
  resources :teachers
  root 'teacher#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
