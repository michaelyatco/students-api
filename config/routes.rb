Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "students#index"

  get "/students", to: "students#index"
  post "/students", to: "students#create"
  get "/students/:id", to: "students#show"
  patch "/students/:id", to: "students#update"
  delete "/students/:id", to: "students#destroy"

end
