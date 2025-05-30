# 📺 Youtube Summarizer API

A Ruby on Rails 8.0.2 API-only application that provides RESTful endpoints to summarize YouTube videos using natural language processing.

This project includes auto-generated and interactive API documentation powered by **Swagger UI** and **Rswag**.

---

## 🚀 Features

- Summarize YouTube videos via API
- RESTful JSON endpoints
- Integrated Swagger UI documentation (`rswag`)
- Ready-to-deploy and Dockerizable
- Built with Rails 8 and Ruby 3.2

---

## 📦 Installation

1. **Clone the repository**

```bash
git clone https://github.com/shiboshreeroy/youtube_summarizer_api.git
cd youtube_summarizer_api
````

2. **Install dependencies**

```bash
bundle install
```

3. **Set up the database**

```bash
rails db:create db:migrate
```

4. **Start the server**

```bash
rails server
```

5. **Visit Swagger UI**

Open [http://localhost:3000/api-docs](http://localhost:3000/api-docs) in your browser.

---

## 📘 API Documentation (Swagger UI)

The project uses [Rswag](https://github.com/rswag/rswag) to generate and serve OpenAPI-compliant documentation.

### 📂 Swagger YAML Path

Make sure the following file exists and is accessible:

```
public/api-docs/v1/swagger.yaml
```

### 🛠 Example rswag-ui initializer

File: `config/initializers/rswag-ui.rb`

```ruby
Rswag::Ui.configure do |c|
  c.swagger_endpoint '/api-docs/v1/swagger.yaml', 'API V1 Docs'
end
```

---

## 🌐 Enabling CORS

To enable CORS for development:

File: `config/initializers/cors.rb`

```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```

Restart your Rails server after updating.

---

## 🧪 Running Tests

```bash
bundle exec rspec
```

---

## 🔧 Tools & Dependencies

* Ruby 3.2.2
* Rails 8.0.2
* PostgreSQL (or SQLite for dev)
* Rswag (for Swagger integration)
* RSpec (for testing)

---

## 📂 Directory Structure

```
youtube_summarizer_api/
├── app/
├── config/
├── public/
│   └── api-docs/
│       └── v1/
│           └── swagger.yaml
├── spec/
│   └── integration/
├── Gemfile
└── README.md
```

---

## 👥 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

---

## 📝 License

[MIT](LICENSE)

---

## 📬 Contact

Developed by [Shiboshree Roy](https://github.com/yourusername)
Project repo: [https://github.com/shiboshreeroy/youtube\_summarizer\_api](https://github.com/shiboshreeroy/youtube_summarizer_api)

---

