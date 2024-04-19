=begin
MassPay API

The version of the OpenAPI document: 0.1.4
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

# Common files
require 'masspay_ruby_sdk/client'
require 'masspay_ruby_sdk/constants'
require 'masspay_ruby_sdk/version'

# APIs
require 'masspay_ruby_sdk/api/account_service'
require 'masspay_ruby_sdk/api/attribute_service'
require 'masspay_ruby_sdk/api/card_service'
require 'masspay_ruby_sdk/api/catalog_service'
require 'masspay_ruby_sdk/api/kyc_service'
require 'masspay_ruby_sdk/api/load_service'
require 'masspay_ruby_sdk/api/payout_service'
require 'masspay_ruby_sdk/api/spend_back_service'
require 'masspay_ruby_sdk/api/tax_service'
require 'masspay_ruby_sdk/api/user_service'
require 'masspay_ruby_sdk/api/wallet_service'

module MasspayRubySdk
  class << self

    def client(options = {}, faraday_options = {})
      MasspayRubySdk::Client.new(options, faraday_options)
    end

  end
end
