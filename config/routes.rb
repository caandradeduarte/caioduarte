Caioduarte::Application.routes.draw do
  resources :jobs, :path => 'jobs'

  resources :users, :path => 'users'

  resources :bios, :path => 'bios' do 
    collection do
      get 'edit_multiple'
      put 'update_multiple'
    end
  end

  resources :languages, :path => 'languages'

  root :to => "home#index"
end
