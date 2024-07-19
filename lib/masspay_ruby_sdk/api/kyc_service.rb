=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class KycService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Attributes velocity check
    # POST /payout/attribute/{user_token}/velocity
    # @param body The body of the request
    def find_attributes_velocity user_token, body
      @client.post("payout/attribute/#{user_token}/velocity") do |req|
        req.body = body
      end
    end

    # Get an Au10tix session link
    # GET /payout/user/{user_token}/kyc/au10tix
    def get_user_user_token_kyc_au_10_tix user_token
      @client.get("payout/user/#{user_token}/kyc/au10tix") 
    end

    # Upload ID photos
    # POST /payout/user/{user_token}/kyc/id
    # @param body The body of the request
    def upload_id_photos user_token, body
      @client.post("payout/user/#{user_token}/kyc/id") do |req|
        req.body = body
      end
    end

    # Get all KYC sessions
    # GET /payout/user/{user_token}/kyc/id
    def get_user_user_token_kyc_attempts user_token
      @client.get("payout/user/#{user_token}/kyc/id") 
    end

    # Get a Veriff session link
    # GET /payout/user/{user_token}/kyc/veriff
    def get_user_user_token_kyc_veriff user_token
      @client.get("payout/user/#{user_token}/kyc/veriff") 
    end

  end
end
