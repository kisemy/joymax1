Rails.application.routes.draw do
  resources :account_charts
  resources :invoice_lines
  resources :invoices
  resources :customers


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


 resources :account_charts ,only: [:index, :new, :create, :show]
 resources :invoices, only: [:index, :new, :create, :show]


 resources :invoices, only: [:index, :new, :create, :show, :edit, :update, :destroy]


# routes for adding fields dynamically
  get '/add_field', to: 'invoices#add_field', as: 'add_field'
  post '/add_field', to: 'invoices#add_field'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#resources:flowdash
   #get 'flowdash/:page' => 'flowdash#show', as: 'flowdash'
get 'flowdash/:page' => 'flowdash#show', as: 'flowdash'
 root 'flowdash/flowdash#index';

end


