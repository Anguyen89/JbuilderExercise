Rails.application.routes.draw do
 namespace :api, defaults: { format: :json } do
   resources :parties, only: [:index, :show]
   resources :invitations, only: [:index, :show]
   resources :guests do
    resources :gifts, only: [:index]
   end
 end
end
