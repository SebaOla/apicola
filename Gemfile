source 'https://rubygems.org'

gem 'rails'
gem 'haml-rails'
gem 'jquery-rails'
gem 'rqrcode'
gem 'zxing'
gem "spoon", "~> 0.0.4"

group :production do
	gem 'unicorn'
	gem 'pg'
end

group :assets do
  gem 'libv8'
  gem "twitter-bootstrap-rails"
  gem 'therubyracer', :require => 'v8'
  gem "less-rails"
end

group :development, :test do
  gem 'sqlite3'
	gem 'thin'
	gem 'rspec-rails'
	gem 'factory_girl_rails', :require => false
	gem 'spork', '~> 1.0rc'

	gem 'guard-rspec'
	gem 'guard-cucumber'
	gem 'guard-spork'
	gem 'shoulda-matchers'

	gem 'simplecov', :require => false

	gem 'cucumber-rails', :require => false
	gem 'capybara'
	gem 'json_spec'
	
	gem 'database_cleaner'
end