
Chat::Application.routes.draw do
  get "public/index"
  root to: "public#index"
  
  
  #match '/docs', to: YARD::Server::RackMiddleware.new(Rails.application, :libraries => libraries, :server_options => {document_root: '/docs/'})
end