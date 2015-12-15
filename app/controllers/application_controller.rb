class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  transcript = ''
# GATEWAY = ActiveMerchant::Billing::CardknoxGateway.new({
#        api_key: 'xtest_dle'
# })


  GATEWAY.wiredump_device = transcript


# #     # do some operations with the gateway_instance
# #     # gateway_instance.charge(..)
# #     # gateway_instance.refund(..)
# #     # Dump a log of the entire HTTP conversation, with sensitive information scrubbed out


  logger.info(GATEWAY.scrub(transcript))
  
end
