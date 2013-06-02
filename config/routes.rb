Apicola::Application.routes.draw do
  resources :bills


  resources :products
  match 'product_search' => 'products#search', :via => :get
  match 'add_product' => 'products#add', :via => :get


  resources :customers


  resources :tasks


  resources :beehives


  resources :apiaries
  root :to => 'welcome#index'
end
