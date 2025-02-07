Rails.application.routes.draw do
devise_for :user
  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
  resources :tweets do
    collection do
      get "question1"
      get "question2"
      get "question3"
      get "result"
    end
  end
  root 'hello#index'
  resources :songs do
    collection do
      get "search"
  
    end
    member do
      get "album"
      get "artist"
    end
  end
end