TestApp::Application.routes.draw do
  get 'profiles/[:id]' => 'profiles#show'
  resources :articles do
    member do
      get :additional_fields
    end
  end
  
  resources :posts, :widgets, :dummy
end
