=begin
MassPay API

The version of the OpenAPI document: 0.1.4
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class WalletService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Retrieve all available wallets for a user
    # GET /wallet/{user_token}
    def get_wallet user_token
      @client.get("wallet/#{user_token}") 
    end

    # Get all AutoPay rules
    # GET /wallet/{user_token}/{wallet_token}/autopay
    def get_autopay_rules user_token, wallet_token
      @client.get("wallet/#{user_token}/#{wallet_token}/autopay") 
    end

    # Add AutoPay rule
    # POST /wallet/{user_token}/{wallet_token}/autopay
    # @param body The body of the request
    def create_autopay_rule user_token, wallet_token, body
      @client.post("wallet/#{user_token}/#{wallet_token}/autopay") do |req|
        req.body = body
      end
    end

    # Delete AutoPay rule
    # DELETE /wallet/{user_token}/{wallet_token}/autopay
    # @param query_params The query parameters
    def delete_autopay_rule user_token, wallet_token, query_params={}
      @client.delete("wallet/#{user_token}/#{wallet_token}/autopay") do |req|
        req.params = query_params
      end
    end

  end
end
