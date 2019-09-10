require 'rubygems'
require 'bundler/setup'
require 'tilt/erubis'
require 'date'
require 'sinatra' unless defined?(Sinatra)

configure do
  SiteConfig = OpenStruct.new(
    title: 'Matcha',
    author: 'Alf & Malo',
    url_base: 'http://localhost:4567/'
  )

  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }
end
