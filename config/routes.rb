Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/speaker' => 'speakers#first_speaker'
    get '/speakers' => 'speakers#all_speakers'
    get '/allmeetings' => 'meetings#all_meetings'
    get '/meeting/:title' => 'meetings#one_meeting'
  end
end
