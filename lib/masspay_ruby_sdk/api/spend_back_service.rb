=begin
MassPay API

The version of the OpenAPI document: 0.1.4
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
    # GET /spendback/{user_token}
    def get_user_spendbacks_by_token user_token
      @client.get("spendback/#{user_token}") 
    end

    # Initiate a spend back transaction
    # POST /spendback/{user_token}
    # @param body The body of the request
    def initiate_spendback user_token, body
      @client.post("spendback/#{user_token}") do |req|
        req.body = body
      end
    end

  end
end
