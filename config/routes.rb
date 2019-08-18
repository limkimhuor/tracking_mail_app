Rails.application.routes.draw do
  root to: "homes#index"
  resources :homes, only: %i(index create)
  get "/beacon", to: "tracking#beacon"

  mount LetterOpenerWeb::Engine, at: "/mail" if Rails.env.development?
end
