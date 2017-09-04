Rails.application.routes.draw do
  root 'information#index'
  post '/generate', to: 'information#generate'
end
