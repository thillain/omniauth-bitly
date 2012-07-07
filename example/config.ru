require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-bitly'

ENV['CLIENT_ID']='3c415868ca3dc01da2d5b15549ef45a70cbb7924'
ENV['CLIENT_SECRET']='1ac5997f6070bd4480dbbf60f4523d36ddf1c650'
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
    #content_type 'text/plain'
    #request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
    puts "HHHH"
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
