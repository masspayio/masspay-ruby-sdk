=begin
MassPay API

The version of the OpenAPI document: 0.1.4
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
    # GET /wallet/{user_token}/{wallet_token}/card
    def get_wallet_card_info user_token, wallet_token
      @client.get("wallet/#{user_token}/#{wallet_token}/card") 
    end

    # Update MassPay card information
    # PUT /wallet/{user_token}/{wallet_token}/card
    # @param query_params The query parameters
    def update_wallet_card_info user_token, wallet_token, query_params={}
      @client.put("wallet/#{user_token}/#{wallet_token}/card") do |req|
        req.params = query_params
      end
    end

  end
end
