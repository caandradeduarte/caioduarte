Caioduarte::Application.routes.draw do
  LOCALES = /en|pt\-BR/

  match '/:locale' => 'home#index', :locale => LOCALES

  scope "(:locale)", :locale => LOCALES do
    root :to => "home#index"
  end

  namespace :admin do
    scope "(:locale)", :locale => LOCALES do
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
    end

    root :to => "home#index"
  end
end
