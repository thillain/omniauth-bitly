require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-bitly'

class App < Sinatra::Base
  get '/' do
    <<-HTML
     <ul>
        <li><a href='/auth/bitly'>Sign in with Bitly</a></li>
     </ul>
      HTML
  end
  
end
run App.new