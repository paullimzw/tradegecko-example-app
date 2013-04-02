require File.expand_path('lib/omniauth/strategies/tradegecko', Rails.root)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tradegecko, ENV["OAUTH_ID"], ENV["OAUTH_SECRET"]
end
