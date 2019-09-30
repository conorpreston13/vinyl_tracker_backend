Rails.application.routes.draw do
        # ---------------------------------------------------routes for vinyls
    resources :vinyls
        # ---------------------------------------------------routes for acquisitions
    get '/vinyls/:id/acquisitions' =>	"acquisitions#index"
    get '/vinyls/:id/acquisitions/:id' =>	"acquisitions#show"
    post '/vinyls/:id/acquisitions' =>	"acquisitions#create"
    delete '/vinyls/:id/acquisitions/:id' =>	"acquisitions#destroy"
    puts '/vinyls/:id/acquisitions/:id' =>	"acquisitions#puts"
    patch '/vinyls/:id/acquisitions/:id' =>	"acquisitions#patch"
        # ------------------a simplier way to create these routes would be to use a generate resource. Next time...
end
