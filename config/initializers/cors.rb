Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "mini-capstone-frontend-9yz9.onrender.com", "localhost:5173"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put, :delete]
  end
end
