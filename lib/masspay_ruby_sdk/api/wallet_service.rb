=begin
MassPay API

The version of the OpenAPI document: 1.0.0
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
    # GET /payout/wallet/{user_token}
    def get_wallet user_token
      @client.get("payout/wallet/#{user_token}") 
    end

    # Get all AutoPayout rules
    # GET /payout/wallet/{user_token}/{wallet_token}/autopayout
    def get_autopayout_rules user_token, wallet_token
      @client.get("payout/wallet/#{user_token}/#{wallet_token}/autopayout") 
    end

    # Add AutoPayout rule
    # POST /payout/wallet/{user_token}/{wallet_token}/autopayout
    # @param body The body of the request
    def create_autopayout_rule user_token, wallet_token, body
      @client.post("payout/wallet/#{user_token}/#{wallet_token}/autopayout") do |req|
        req.body = body
      end
    end

    # Delete AutoPayout rule
    # DELETE /payout/wallet/{user_token}/{wallet_token}/autopayout
    # @param query_params The query parameters
    def delete_autopayout_rule user_token, wallet_token, query_params={}
      @client.delete("payout/wallet/#{user_token}/#{wallet_token}/autopayout") do |req|
        req.params = query_params
      end
    end

  end
end
