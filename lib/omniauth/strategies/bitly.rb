require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Bitly < OmniAuth::Strategies::OAuth2
      option :name, "bitly"
      option :client_options,{:site=>'https://bitly.com',
                              :authorize_url => '/oauth/authorize',}
    end
  end
end