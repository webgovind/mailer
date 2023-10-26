Rails.application.routes.draw do
  root "welcome#index"
  get "/send_mail" => "welcome#send_mail"
  post "/send_mail", to: "welcome#send_mail" 
end

