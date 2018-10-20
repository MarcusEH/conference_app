Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # get '/speakers' => 'speakers#show' #query
    get '/speakers/:id' => 'speakers#show' #url segment
    # get '/speakers/' => 'speakers#show' #body param
    get '/speakers/' => 'speakers#index'
    post '/speakers/' => 'speakers#create'
    patch '/speakers/:id' => 'speakers#update'
    delete '/speakers/:id' => 'speakers#destroy'

    get '/meetings' => 'meetings#index'
    get '/meetings/:id' => 'meetings#show'
    post '/meetings' => 'meetings#create'
    patch '/meetings/:id' => 'meetings#update'
    delete '/meetings/:id' => 'meetings#destroy'

  end
end
