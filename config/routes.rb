Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: %i[new create]

    get 'top', on: :collection
    get 'chef', on: :member
  end

  resources :reviews, only: :destroy




  # get 'top', to: 'restaurants#top'

end
