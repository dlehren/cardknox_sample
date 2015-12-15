# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.:credit_card_number, :card_security_code
Rails.application.config.filter_parameters += [:password, :credit_card_number, :card_security_code, :expiration_month, :expiration_year]

