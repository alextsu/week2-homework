Rails.application.routes.draw do

  get '/greet' => 'greet#hello'
  get '/contact' => 'contact#input'
  get '/contact_submitted' => 'contact#output'
  get '/rps' => 'rps#index'
  get '/rps/show' => 'rps#show'
  get '/dice' => 'dice#start'
  get '/dice/roll' => 'dice#roll'
  

end
