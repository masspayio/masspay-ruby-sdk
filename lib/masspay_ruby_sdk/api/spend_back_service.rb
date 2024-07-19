=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class SpendBackService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Get history of spend backs by user token
    # GET /payout/spendback/{user_token}
    def get_user_spendbacks_by_token user_token
      @client.get("payout/spendback/#{user_token}") 
    end

    # Initiate a spend back transaction
    # POST /payout/spendback/{user_token}
    # @param body The body of the request
    def initiate_spendback user_token, body
      @client.post("payout/spendback/#{user_token}") do |req|
        req.body = body
      end
    end

  end
end
