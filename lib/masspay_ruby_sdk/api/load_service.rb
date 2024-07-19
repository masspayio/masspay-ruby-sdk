=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class LoadService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Resend balance notification
    # PUT /payout/wallet/{user_token}
    # @param query_params The query parameters
    def resend_balance_notification user_token, query_params={}
      @client.put("payout/wallet/#{user_token}") do |req|
        req.params = query_params
      end
    end

    # Initiate a load transaction
    # POST /payout/load/{user_token}
    # @param body The body of the request
    def load_user user_token, body
      @client.post("payout/load/#{user_token}") do |req|
        req.body = body
      end
    end

    # Get history of loads by user token
    # GET /payout/load/{user_token}
    def get_user_loads_by_token user_token
      @client.get("payout/load/#{user_token}") 
    end

    # Resend load notification
    # PUT /payout/load/{user_token}
    # @param query_params The query parameters
    def resend_load_notification user_token, query_params={}
      @client.put("payout/load/#{user_token}") do |req|
        req.params = query_params
      end
    end

    # Reverse a user load
    # DELETE /payout/load/{user_token}
    # @param query_params The query parameters
    def cancel_user_load user_token, query_params={}
      @client.delete("payout/load/#{user_token}") do |req|
        req.params = query_params
      end
    end

  end
end
