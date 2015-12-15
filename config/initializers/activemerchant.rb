require 'logger'

GATEWAY = ActiveMerchant::Billing::Base.gateway('cardknox').new(api_key: ENV['CARDKNOX_KEY']) 

if Rails.env == "development"

  transcript = ''

  GATEWAY.wiredump_device = transcript

  Rails.logger.info(GATEWAY.scrub(GATEWAY.wiredump_device))

end
