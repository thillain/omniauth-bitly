require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Bitly < OmniAuth::Strategies::OAuth2
      option :name, "bitly"
      option :client_options,{:site=>'https://bitly.com',
                              :authorize_url => '/oauth/authorize',
                              :token_url => 'https://api-ssl.bit.ly/oauth/access_token'}
      uid{ raw_info['id'] }

      info do
        prune!({
          'login' => raw_info['login'],
          'display_name' => raw_info['display_name'],
          'full_name' => raw_info['full_name'],
          'profile_image' => raw_info['profile_image'],
          'profile_ur'=>raw_info['profile_url'],
          'urls' => {
            'Bitly' => raw_info['link'],
            'Website' => raw_info['website']
          }
           })
      end
      extra do
        {:raw_info => raw_info}
      end
      def raw_info
          @raw_info ||= access_token.get("/user/").parsed['response']
      end
    end
  end
end
OmniAuth.config.add_camelization 'bitly', 'Bitly'