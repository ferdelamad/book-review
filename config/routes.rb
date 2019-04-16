Rails.application.routes.draw do
  resource :books
  root 'books#index'
end
