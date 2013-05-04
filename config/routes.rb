Caioduarte::Application.routes.draw do
  resources :jobs, :except => :show

  resources :users, :except => :show

  resource :bios do 
    collection do
      get 'edit_multiple'
      put 'update_multiple'
    end
  end

  resources :languages, :except => :show

  resource :user_sessions, :only => [:create, :new, :destroy]

  root :to => "home#index"
end
