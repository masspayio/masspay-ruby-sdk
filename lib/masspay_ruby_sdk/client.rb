=begin
MassPay API

The version of the OpenAPI document: 0.1.4
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'faraday'
require_relative './constants'

module MasspayRubySdk
  class Client

    # @param [Hash] options A customizable set of options.
    # @option options [String] :basic_auth A basic auth string of the form "username:password" (default: nil)
    # @option options [String] :bearer_auth A bearer auth token (default: nil)
    # @option options [String] :url The base URL for the API (default: nil, which will use the production API)
    # @param [Hash] faraday_options A customizable set of options to be passed to Faraday. (default: {}) (see: [Faraday::Connection#initialize](https://www.rubydoc.info/github/lostisland/faraday/Faraday%2FConnection:initialize))
    def initialize(options = {}, faraday_options = {})

      faraday_options[:url] ||= options[:url] || "https://api.masspay.io/v0.1.4"

      @client = Faraday.new(faraday_options) do |builder|
        builder.request :json
        builder.response :json, parser_options: { object_class: OpenStruct }
        builder.adapter Faraday.default_adapter

        builder.headers[USER_AGENT_HEADER_NAME] = USER_AGENT

        if options[:basic_auth] || options[:bearer_auth]
          if(!options[:bearer_auth].nil?)
            builder.request :authorization, 'Bearer', options[:bearer_auth]
          elsif !options[:basic_auth]
            builder.request :authorization, :basic, options[:basic_auth].split(":").first, options[:basic_auth].split(":").last
          end
        end

      end
    end

    def account_service
      MasspayRubySdk::AccountService.new(@client)
    end

    def attribute_service
      MasspayRubySdk::AttributeService.new(@client)
    end

    def card_service
      MasspayRubySdk::CardService.new(@client)
    end

    def catalog_service
      MasspayRubySdk::CatalogService.new(@client)
    end

    def kyc_service
      MasspayRubySdk::KycService.new(@client)
    end

    def load_service
      MasspayRubySdk::LoadService.new(@client)
    end

    def payout_service
      MasspayRubySdk::PayoutService.new(@client)
    end

    def spend_back_service
      MasspayRubySdk::SpendBackService.new(@client)
    end

    def tax_service
      MasspayRubySdk::TaxService.new(@client)
    end

    def user_service
      MasspayRubySdk::UserService.new(@client)
    end

    def wallet_service
      MasspayRubySdk::WalletService.new(@client)
    end


  end
end
