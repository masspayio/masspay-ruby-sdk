=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class PayoutService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Initiate a payout transaction
    # POST /payout/{user_token}
    # @param body The body of the request
    # @param query_params The query parameters
    def initiate_payout user_token, body, query_params={}
      @client.post("payout/#{user_token}") do |req|
        req.body = body
        req.params = query_params
      end
    end

    # Get history of payouts by user token
    # GET /payout/{user_token}
    # @param query_params The query parameters
    def get_user_payouts_by_token user_token, query_params={}
      @client.get("payout/#{user_token}") do |req|
        req.params = query_params
      end
    end

    # Commit payout transaction
    # PUT /payout/{user_token}/{payout_token}
    def commit_payout_txn user_token, payout_token
      @client.put("payout/#{user_token}/#{payout_token}") 
    end

    # Get status of a payout by payout token
    # GET /payout/{user_token}/{payout_token}
    # @param query_params The query parameters
    def get_payout_status user_token, payout_token, query_params={}
      @client.get("payout/#{user_token}/#{payout_token}") do |req|
        req.params = query_params
      end
    end

    # Get transaction confirmation details
    # PATCH /payout/{user_token}/{payout_token}
    def get_transaction_confirmation_details user_token, payout_token
      @client.patch("payout/#{user_token}/#{payout_token}") 
    end

  end
end
