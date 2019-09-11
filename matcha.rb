require 'bundler/setup'
require 'sinatra'
require 'require_all'
require File.join(File.dirname(__FILE__), 'environment')
configure(:development) do
  require 'sinatra/reloader'
  require 'pry'
end
helpers do
  # add your helpers here
end
require_all 'controllers'

