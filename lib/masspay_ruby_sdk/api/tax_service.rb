=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class TaxService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Get list of users' annual balance
    # GET /payout/tax
    # @param query_params The query parameters
    def get_tax_users query_params={}
      @client.get("payout/tax") do |req|
        req.params = query_params
      end
    end

    # Get link for tax interview
    # GET /payout/{user_token}/tax
    # @param query_params The query parameters
    def get_tax_interview_link user_token, query_params={}
      @client.get("payout/#{user_token}/tax") do |req|
        req.params = query_params
      end
    end

  end
end
