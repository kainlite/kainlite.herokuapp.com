Rails.application.routes.draw do
  scope :api do
    get "/frames(.:format)" => "frames#index"
    get "/frames/:id(.:format)" => "frames#show"
  end

  root 'frames#index'
end
