require 'bundler/setup'
require 'sinatra'
require 'require_all'
require 'mysql2'
require 'sinatra/flash'
require File.join(File.dirname(__FILE__), 'environment')
configure(:development) do
  require 'sinatra/reloader'
  require 'pry'
  require 'better_errors'
end

enable :sessions
require_all 'helpers'
require_all 'controllers'

before do
  Mysql2::Client.default_query_options.merge!(symbolize_key: :true)
  @bdd = Mysql2::Client.new(host: 'localhost',
                            database: 'matcha',
                            username: 'root',
                            password: ENV['DB_MDP'])
end
