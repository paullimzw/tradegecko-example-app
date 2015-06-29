require 'omniauth-tradegecko'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tradegecko, ENV["20085853f349dea3529f04591ee74a8feb17c72d3158e477fc0c959956b1b6b4"], ENV["0af3da8dd0263a7f372c44cf35250da9f02017867c34a823df00aa494193a777"]
end
