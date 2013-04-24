source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'jquery-rails'
gem 'simple_form'

group :production do
	gem "pg"
	gem 'dalli'
end

group :development do
	gem 'sqlite3'
end


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'bourbon'
	gem 'neat'
	gem 'compass-rails'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
end