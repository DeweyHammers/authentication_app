Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3001"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  # allow do
  #   origin "https://jdh-authentication-app-react.herokuapp.com"
  #   resource "*", headers: :any. methods: [:get, :post, :put, :patch, :delete, :options, :head],
  #   credentials: true
  # end
end