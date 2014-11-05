require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Guokr < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'http://apis.guokr.com',
        :authorize_url => 'https://account.guokr.com/oauth2/authorize',
        :token_url => 'https://account.guokr.com/oauth2/token'
      }

      option :name, "guokr"

      uid { raw_info['ukey'] }

      info do
        {
          :name => raw_info['nickname'],
          :image => raw_info['avatar']['large'],
          :introduction => raw_info['introduction'],
          :url => raw_info['url']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get("community/user/#{access_token.params['ukey']}.json").parsed['result']
      end
    end
  end
end