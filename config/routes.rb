Rails.application.routes.draw do
  scope :api do
    get "/frames(.:format)" => "screencasts#index"
    get "/frames/:id(.:format)" => "screencasts#show"
  end
end
