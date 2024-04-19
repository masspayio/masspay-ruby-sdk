=begin
MassPay API

The version of the OpenAPI document: 0.1.4
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class AccountService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Get current available balance
    # GET /account/balance
    def get_account_balance 
      @client.get("account/balance") 
    end

    # Get certified account statement
    # GET /account/statement
    # @param query_params The query parameters
    def get_account_statement query_params={}
      @client.get("account/statement") do |req|
        req.params = query_params
      end
    end

  end
end
