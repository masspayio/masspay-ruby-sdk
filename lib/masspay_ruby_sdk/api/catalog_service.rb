=begin
MassPay API

The version of the OpenAPI document: 0.1.4
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
    # GET /country/list
    def get_country_list 
      @client.get("country/list") 
    end

    # Gets a list of Companies and their service offerings for the given country code.
    # GET /country/{country_code}
    # @param query_params The query parameters
    def get_country_services country_code, query_params={}
      @client.get("country/#{country_code}") do |req|
        req.params = query_params
      end
    end

    # Gets a list of Companies and their cheapest service offerings for the given country code.
    # GET /country/{country_code}/cheapest
    # @param query_params The query parameters
    def get_cheapest_country_services country_code, query_params={}
      @client.get("country/#{country_code}/cheapest") do |req|
        req.params = query_params
      end
    end

    # Returns list of alternative service to a provided service
    # GET /service/{destination_token}/alternatives
    def get_destination_token_alternatives destination_token
      @client.get("service/#{destination_token}/alternatives") 
    end

    # Returns provided service
    # GET /service/{destination_token}
    # @param query_params The query parameters
    def get_destination_token destination_token, query_params={}
      @client.get("service/#{destination_token}") do |req|
        req.params = query_params
      end
    end

    # Get user agreement
    # GET /user-agreements
    # @param query_params The query parameters
    def get_user_agreement query_params={}
      @client.get("user-agreements") do |req|
        req.params = query_params
      end
    end

    # Get available user agreements
    # OPTIONS /user-agreements
    def get_user_agreements_names 
      @client.options("user-agreements") 
    end

  end
end
