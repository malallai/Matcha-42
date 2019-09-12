# frozen_string_literal: true
source 'https://rubygems.org'

gem 'bundler'
gem 'dotenv'
gem 'erubis'
gem 'mysql2'
gem 'rake'
gem 'require_all'
gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-flash'

group :production do
  gem 'puma'
end

group :development do
  gem 'better_errors'
  gem 'pry'
  gem 'rubocop'
end

group :test do
  gem 'rack-test'
  gem 'rspec', require: 'spec'
end
