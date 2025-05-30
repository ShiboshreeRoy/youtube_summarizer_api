Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'summarize', to: 'summarizer#create'
    end
  end

  # Swagger UI
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
