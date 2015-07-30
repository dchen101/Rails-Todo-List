Rails.application.routes.draw do


  resources :tasks do
    get :completed
  end

  root 'tasks#index'










end
