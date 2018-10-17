Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/speakers' => 'speakers#show' #query
    get '/speakers/:id' => 'speakers#show' #url segment
    get '/speakers/' => 'speakers#show' #body param
    get '/speakers/' => 'speakers#index'
    get '/meetings' => 'meetings#index'
    get '/meetings/:id' => 'meetings#show'
  end
end
