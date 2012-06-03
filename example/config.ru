require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-bitly'

ENV['CLIENT_ID']='afb00d85f27d32eed550e83b3ef26ad0f214f21c'
ENV['CLIENT_SECRET']='1f54c109c8c58253cc3abdf4babf2323d1309c34'
ENV['REDIRECT_URI']=''
class App < Sinatra::Base
  get '/' do
    <<-HTML
 <ul>
 <li><a href='/auth/bitly'>Sign in with Bitly</a></li>
 </ul>
 HTML
  end

  get '/auth/:provider/callback' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
  end

  get '/auth/failure' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
  end
end

run App.new
use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :bitly, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
end
