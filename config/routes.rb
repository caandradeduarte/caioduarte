Caioduarte::Application.routes.draw do
  LOCALES = /en|pt\-BR/

  scope "(:locale)", :locale => LOCALES do
    resource :bio, :only => :show

    resource :jobs, :only => :show

    resource :contacts, :only => [:new, :create, :show], :path => 'contact'

    root :to => "home#index"

    namespace :admin do
      resources :jobs, :except => :show

      resources :users, :except => :show

      resource :bios, :only => [] do 
        collection do
          get 'edit_multiple'
          put 'update_multiple'
        end
      end

      resources :languages, :except => :show

      resource :user_sessions, :only => [:create, :new, :destroy], :path => 'login', :path_names => {:new => ''}

      root :to => "home#index"
    end
  end

  match '/:locale' => 'home#index', :locale => LOCALES
end
