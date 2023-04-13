=begin
#MassPay API

#MassPay API

The version of the OpenAPI document: 0.1.4
Contact: support@masspay.io
Generated by: MassPay Inc.
OpenAPI Generator version: 6.5.0
=end

require 'cgi'

module MassPayRubySdk
  class AccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get current available balance
    # Retrieves the current available balances.
    # @param [Hash] opts the optional parameters
    # @return [Array<AvailableBalanceTxnResp>]
    def get_account_balance(opts = {})
      data, _status_code, _headers = get_account_balance_with_http_info(opts)
      data
    end

    # Get current available balance
    # Retrieves the current available balances.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AvailableBalanceTxnResp>, Integer, Hash)>] Array<AvailableBalanceTxnResp> data, response status code and response headers
    def get_account_balance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.get_account_balance ...'
      end
      # resource path
      local_var_path = '/account/balance'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AvailableBalanceTxnResp>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"AccountApi.get_account_balance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#get_account_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get certified account statement
    # Retreived a certified PDF ledger statement for a provided timeframe
    # @param start_date [Date] Starting date of the statement
    # @param ending_date [Date] Ending date of the statement (not more than 31 days than &#x60;start_date&#x60;)
    # @param [Hash] opts the optional parameters
    # @return [GetAccountStatement200Response]
    def get_account_statement(start_date, ending_date, opts = {})
      data, _status_code, _headers = get_account_statement_with_http_info(start_date, ending_date, opts)
      data
    end

    # Get certified account statement
    # Retreived a certified PDF ledger statement for a provided timeframe
    # @param start_date [Date] Starting date of the statement
    # @param ending_date [Date] Ending date of the statement (not more than 31 days than &#x60;start_date&#x60;)
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountStatement200Response, Integer, Hash)>] GetAccountStatement200Response data, response status code and response headers
    def get_account_statement_with_http_info(start_date, ending_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountApi.get_account_statement ...'
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling AccountApi.get_account_statement"
      end
      # verify the required parameter 'ending_date' is set
      if @api_client.config.client_side_validation && ending_date.nil?
        fail ArgumentError, "Missing the required parameter 'ending_date' when calling AccountApi.get_account_statement"
      end
      # resource path
      local_var_path = '/account/statement'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = start_date
      query_params[:'ending_date'] = ending_date

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAccountStatement200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"AccountApi.get_account_statement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountApi#get_account_statement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end