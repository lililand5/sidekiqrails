# inside config/routes.rb
Rails.application.routes.draw do

  resources :cars, only: %i[index show edit update] do
    collection do
      get 'calculate_price/:id', to: 'cars#calculate_price', as: 'calculate_price'
    end
  end


  get "welcome/index"

  # route where any visitor require the helloWorldJob to be triggered
  post "welcome/trigger_job"

  # where visitor are redirected once job has been called
  get "other/job_done"

  root to: "welcome#index"
end
