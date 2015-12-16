

GATEWAY = ActiveMerchant::Billing::Base.gateway('cardknox').new(api_key: ENV['CARDKNOX_KEY']) 

if Rails.env == "development"
  
end
