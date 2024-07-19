=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class SubaccountService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Create a subaccount
    # POST /subaccount
    # @param body The body of the request
    def create_subaccount body
      @client.post("subaccount") do |req|
        req.body = body
      end
    end

    # Add UBOs to subaccount
    # POST /subaccount/{subaccount_token}/ubo
    # @param body The body of the request
    def get_subaccount_subaccount_token_ubo subaccount_token, body
      @client.post("subaccount/#{subaccount_token}/ubo") do |req|
        req.body = body
      end
    end

    # Upload UBO ID photos
    # POST /subaccount/{subaccount_token}/ubo/{ubo_token}/id
    # @param body The body of the request
    def upload_subaccount_ubo_id subaccount_token, ubo_token, body
      @client.post("subaccount/#{subaccount_token}/ubo/#{ubo_token}/id") do |req|
        req.body = body
      end
    end

  end
end
