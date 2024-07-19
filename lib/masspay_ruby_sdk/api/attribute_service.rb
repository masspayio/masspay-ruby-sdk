=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class AttributeService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Get all stored user attributes
    # GET /payout/attribute/{user_token}
    def get_all_attrs user_token
      @client.get("payout/attribute/#{user_token}") 
    end

    # Store user attributes
    # POST /payout/attribute/{user_token}/{destination_token}/{currency}
    # @param body The body of the request
    def store_attrs user_token, destination_token, currency, body
      @client.post("payout/attribute/#{user_token}/#{destination_token}/#{currency}") do |req|
        req.body = body
      end
    end

    # Get user attributes for destination_token
    # GET /payout/attribute/{user_token}/{destination_token}/{currency}
    def get_attrs user_token, destination_token, currency
      @client.get("payout/attribute/#{user_token}/#{destination_token}/#{currency}") 
    end

  end
end
