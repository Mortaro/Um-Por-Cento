Rails.application.routes.draw do

  mount Sutler::Engine => "/admin"

  root 'pages#root'
  get '/quem-somos' => 'pages#who_we_are', as: 'who_we_are'
  get '/o-que-fazemos' => 'pages#what_we_do', as: 'what_we_do'
  get '/como-ajudar' => 'pages#how_to_help', as: 'how_to_help'
  get '/inspiracoes' => 'pages#inspirations', as: 'inspirations'
  get '/parceiros' => 'pages#partners', as: 'partners'
  get '/loja' => 'pages#store', as: 'store'
  match '/contato' => 'pages#contact', as: 'contact', via: [:get, :post]

end
