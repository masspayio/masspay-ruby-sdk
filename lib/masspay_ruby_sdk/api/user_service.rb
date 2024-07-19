=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class UserService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Create a user
    # POST /payout/user
    # @param body The body of the request
    def create_user body
      @client.post("payout/user") do |req|
        req.body = body
      end
    end

    # Get user by user token
    # GET /payout/user/{user_token}
    def get_user_by_token user_token
      @client.get("payout/user/#{user_token}") 
    end

    # Updated user
    # PUT /payout/user/{user_token}
    # @param body The body of the request
    def update_user user_token, body
      @client.put("payout/user/#{user_token}") do |req|
        req.body = body
      end
    end

    # Lookup an existing user
    # GET /payout/user/lookup
    # @param query_params The query parameters
    def user_lookup query_params={}
      @client.get("payout/user/lookup") do |req|
        req.params = query_params
      end
    end

    # Transactions history
    # GET /payout/user/{user_token}/history
    # @param query_params The query parameters
    def get_user_history user_token, query_params={}
      @client.get("payout/user/#{user_token}/history") do |req|
        req.params = query_params
      end
    end

    # All Users' Transactions history
    # GET /payout/user/history
    # @param query_params The query parameters
    def get_all_users_history query_params={}
      @client.get("payout/user/history") do |req|
        req.params = query_params
      end
    end

  end
end
