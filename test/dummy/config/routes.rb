Rails.application.routes.draw do
    root "recordings#index"
    get "recordings", to: "recordings#index"
end
