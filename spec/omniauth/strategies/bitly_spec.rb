require 'spec_helper'
require 'omniauth-bitly'
require 'base64'

describe OmniAuth::Strategies::Bitly do
  before :each do
    @request = double('Request')
    @request.stub(:params) { {} }
    @request.stub(:cookies) { {} }

    @client_id = '123'
    @client_secret = '53cr3tz'
    @options = {:client_options => {:site => 'https://bitly.com/oauth/authorize'}}
  end

  subject do
    args = [@client_id, @client_secret, @options].compact
    OmniAuth::Strategies::Bitly.new(nil, *args).tap do |strategy|
      strategy.stub(:request) { @request }
    end
  end
end