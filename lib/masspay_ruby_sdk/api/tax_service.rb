=begin
MassPay API

The version of the OpenAPI document: 0.1.4
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
    # GET /tax
    # @param query_params The query parameters
    def get_tax_users query_params={}
      @client.get("tax") do |req|
        req.params = query_params
      end
    end

    # Get link for tax interview
    # GET /{user_token}/tax
    def get_tax_interview_link user_token
      @client.get("#{user_token}/tax") 
    end

  end
end
