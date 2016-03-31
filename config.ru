require 'bundler/setup'
require 'rack-livereload'
# require './app'

use Rack::LiveReload

require 'sinatra'

configure do
  set :template_engine, :erb
end

get %r{(.*)} do |path|
  path += 'index' if path.end_with?('/')
  template = path[1..-1].to_sym
  render settings.template_engine, template
end

run Sinatra::Application
