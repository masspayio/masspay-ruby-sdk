=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

require 'cgi'

module MasspayRubySdk
  class CatalogService

    def initialize(client)
      @client = client ||= Client.new
    end

    # Gets a list of countries where services offered.
    # GET /payout/country/list
    def get_country_list 
      @client.get("payout/country/list") 
    end

    # Gets a list of Companies and their service offerings for the given country code.
    # GET /payout/country/{country_code}
    # @param query_params The query parameters
    def get_country_services country_code, query_params={}
      @client.get("payout/country/#{country_code}") do |req|
        req.params = query_params
      end
    end

    # Gets a list of Companies and their cheapest service offerings for the given country code.
    # GET /payout/country/{country_code}/cheapest
    # @param query_params The query parameters
    def get_cheapest_country_services country_code, query_params={}
      @client.get("payout/country/#{country_code}/cheapest") do |req|
        req.params = query_params
      end
    end

    # Returns list of alternative service to a provided service
    # GET /payout/service/{destination_token}/alternatives
    def get_destination_token_alternatives destination_token
      @client.get("payout/service/#{destination_token}/alternatives") 
    end

    # Returns provided service
    # GET /payout/service/{destination_token}
    # @param query_params The query parameters
    def get_destination_token destination_token, query_params={}
      @client.get("payout/service/#{destination_token}") do |req|
        req.params = query_params
      end
    end

    # Get user agreement
    # GET /payout/user-agreements
    # @param query_params The query parameters
    def get_user_agreement query_params={}
      @client.get("payout/user-agreements") do |req|
        req.params = query_params
      end
    end

    # Get available user agreements
    # OPTIONS /payout/user-agreements
    def get_user_agreements_names 
      @client.options("payout/user-agreements") 
    end

  end
end
