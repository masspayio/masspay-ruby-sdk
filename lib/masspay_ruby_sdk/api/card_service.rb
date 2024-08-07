=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class CardService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Get MassPay card information
    # GET /payout/wallet/{user_token}/{wallet_token}/card
    def get_wallet_card_info user_token, wallet_token
      @client.get("payout/wallet/#{user_token}/#{wallet_token}/card") 
    end

    # Update MassPay card information
    # PUT /payout/wallet/{user_token}/{wallet_token}/card
    # @param query_params The query parameters
    def update_wallet_card_info user_token, wallet_token, query_params={}
      @client.put("payout/wallet/#{user_token}/#{wallet_token}/card") do |req|
        req.params = query_params
      end
    end

  end
end
