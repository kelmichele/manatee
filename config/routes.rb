Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/services', to: 'static_pages#services'
  get '/bondstrand-pipe', to: 'static_pages#bondstrand-pipe'
  get '/contact', to: 'static_pages#contact'
  get '/photos', to: 'static_pages#photos'
end
