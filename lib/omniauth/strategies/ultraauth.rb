require 'omniauth'
require 'omniauth_openid_connect'

module OmniAuth
  module Strategies
    class UltraAuth < OmniAuth::Strategies::OpenIDConnect

      args %i[identifier secret]

      option :identifier, nil
      option :secret, nil
      option :name, 'ultraauth'
      option :scope, [:openid]
      option :discovery, "true"
      option :response_type, :code
      option :issuer, "https://srv.qryp.to/op"
      option :client_auth_method, :basic

      info do
        {
          username: uid
        }
      end

      private

      def client_options
        options.client_options.merge!(identifier: options.identifier, secret: options.secret)
      end
    end
  end
end
OmniAuth.config.add_camelization('ultraauth', 'UltraAuth')
