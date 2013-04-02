module OmniAuth
  module Strategies
    class Tradegecko < OmniAuth::Strategies::OAuth2
      option :name, :tradegecko

      option :client_options, {
        site:           "http://api.lvh.me:3000",
        authorize_path: "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {name: raw_info["name"]}
      end

      def raw_info
        @raw_info ||= access_token.get('/users/current').parsed
      end
    end
  end
end
