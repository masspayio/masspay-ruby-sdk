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
  class CatalogApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets a list of Companies and their cheapest service offerings for the given country code.
    # This **GET** endpoint is used to retrieve a list of companies and their cheapest service offerings for a specific country. <br> You can use this endpoint to obtain information about available services and pricing for each respected company in the provided country. If two providers offer similar services, only the cheapest option will be displayed. <br> To use this endpoint, you need to provide the `country_code` as a required parameter in the URL Path. <br> The response will include a JSON array containing details for each company, including the company name, cheapest service offerings, and pricing.
    # @param country_code [String] Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount Returns the results fee based on the given amount, defaults to $200 (default to '200')
    # @option opts [Float] :limit Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @option opts [String] :wallet_token Token representing the wallet used. If provided, the results would be custom-tailored to this user.
    # @option opts [Boolean] :include_payer_logos Whether to include the payers logo in base64 format.  (default to false)
    # @option opts [String] :user_token Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided
    # @option opts [String] :source_currency Required if amount is provided. The currency associated with the amount
    # @return [CompaniesResp]
    def get_cheapest_country_services(country_code, opts = {})
      data, _status_code, _headers = get_cheapest_country_services_with_http_info(country_code, opts)
      data
    end

    # Gets a list of Companies and their cheapest service offerings for the given country code.
    # This **GET** endpoint is used to retrieve a list of companies and their cheapest service offerings for a specific country. &lt;br&gt; You can use this endpoint to obtain information about available services and pricing for each respected company in the provided country. If two providers offer similar services, only the cheapest option will be displayed. &lt;br&gt; To use this endpoint, you need to provide the &#x60;country_code&#x60; as a required parameter in the URL Path. &lt;br&gt; The response will include a JSON array containing details for each company, including the company name, cheapest service offerings, and pricing.
    # @param country_code [String] Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount Returns the results fee based on the given amount, defaults to $200 (default to '200')
    # @option opts [Float] :limit Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @option opts [String] :wallet_token Token representing the wallet used. If provided, the results would be custom-tailored to this user.
    # @option opts [Boolean] :include_payer_logos Whether to include the payers logo in base64 format.  (default to false)
    # @option opts [String] :user_token Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided
    # @option opts [String] :source_currency Required if amount is provided. The currency associated with the amount
    # @return [Array<(CompaniesResp, Integer, Hash)>] CompaniesResp data, response status code and response headers
    def get_cheapest_country_services_with_http_info(country_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_cheapest_country_services ...'
      end
      # verify the required parameter 'country_code' is set
      if @api_client.config.client_side_validation && country_code.nil?
        fail ArgumentError, "Missing the required parameter 'country_code' when calling CatalogApi.get_cheapest_country_services"
      end
      pattern = Regexp.new(/^[\d.]+$/)
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"limit\"]' when calling CatalogApi.get_cheapest_country_services, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/country/{country_code}/cheapest'.sub('{' + 'country_code' + '}', CGI.escape(country_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'wallet_token'] = opts[:'wallet_token'] if !opts[:'wallet_token'].nil?
      query_params[:'include_payer_logos'] = opts[:'include_payer_logos'] if !opts[:'include_payer_logos'].nil?
      query_params[:'user_token'] = opts[:'user_token'] if !opts[:'user_token'].nil?
      query_params[:'source_currency'] = opts[:'source_currency'] if !opts[:'source_currency'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesResp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"CatalogApi.get_cheapest_country_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_cheapest_country_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of countries where services offered.
    # This **GET** endpoint is used to retrieve a list of all currently available countries of service. <br> You can use this endpoint to obtain a list of countries where MassPay services are offered. <br> There are no required parameters for this endpoint. <br> The response will include a JSON array containing details for each country, including the country code, name, and `three_letter_code`.
    # @param [Hash] opts the optional parameters
    # @return [Array<Country>]
    def get_country_list(opts = {})
      data, _status_code, _headers = get_country_list_with_http_info(opts)
      data
    end

    # Gets a list of countries where services offered.
    # This **GET** endpoint is used to retrieve a list of all currently available countries of service. &lt;br&gt; You can use this endpoint to obtain a list of countries where MassPay services are offered. &lt;br&gt; There are no required parameters for this endpoint. &lt;br&gt; The response will include a JSON array containing details for each country, including the country code, name, and &#x60;three_letter_code&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Country>, Integer, Hash)>] Array<Country> data, response status code and response headers
    def get_country_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_country_list ...'
      end
      # resource path
      local_var_path = '/country/list'

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
      return_type = opts[:debug_return_type] || 'Array<Country>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"CatalogApi.get_country_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_country_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Companies and their service offerings for the given country code.
    # This **GET** endpoint is used to retrieve a list of companies and their service offerings for a specific country. <br> You can use this endpoint to obtain information about available services and pricing for each respected company in the provided country. <br> To use this endpoint, you need to provide the `country_code` in the URL Path. <br> The response will include a JSON array containing details for each company, including the company name, service offerings, and pricing.
    # @param country_code [String] Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount Returns the results fee based on the given amount, defaults to $200 (default to '200')
    # @option opts [Float] :limit Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @option opts [String] :wallet_token Token representing the wallet used. If provided, the results would be custom-tailored to this user. Not necessary if user_token is provided
    # @option opts [Boolean] :include_payer_logos Whether to include the payers logo in base64 format.  (default to false)
    # @option opts [String] :user_token Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided
    # @option opts [String] :source_currency Required if amount is provided. The currency associated with the amount
    # @return [CompaniesResp]
    def get_country_services(country_code, opts = {})
      data, _status_code, _headers = get_country_services_with_http_info(country_code, opts)
      data
    end

    # Gets a list of Companies and their service offerings for the given country code.
    # This **GET** endpoint is used to retrieve a list of companies and their service offerings for a specific country. &lt;br&gt; You can use this endpoint to obtain information about available services and pricing for each respected company in the provided country. &lt;br&gt; To use this endpoint, you need to provide the &#x60;country_code&#x60; in the URL Path. &lt;br&gt; The response will include a JSON array containing details for each company, including the company name, service offerings, and pricing.
    # @param country_code [String] Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount Returns the results fee based on the given amount, defaults to $200 (default to '200')
    # @option opts [Float] :limit Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @option opts [String] :wallet_token Token representing the wallet used. If provided, the results would be custom-tailored to this user. Not necessary if user_token is provided
    # @option opts [Boolean] :include_payer_logos Whether to include the payers logo in base64 format.  (default to false)
    # @option opts [String] :user_token Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided
    # @option opts [String] :source_currency Required if amount is provided. The currency associated with the amount
    # @return [Array<(CompaniesResp, Integer, Hash)>] CompaniesResp data, response status code and response headers
    def get_country_services_with_http_info(country_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_country_services ...'
      end
      # verify the required parameter 'country_code' is set
      if @api_client.config.client_side_validation && country_code.nil?
        fail ArgumentError, "Missing the required parameter 'country_code' when calling CatalogApi.get_country_services"
      end
      pattern = Regexp.new(/^[\d.]+$/)
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"limit\"]' when calling CatalogApi.get_country_services, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/country/{country_code}'.sub('{' + 'country_code' + '}', CGI.escape(country_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'wallet_token'] = opts[:'wallet_token'] if !opts[:'wallet_token'].nil?
      query_params[:'include_payer_logos'] = opts[:'include_payer_logos'] if !opts[:'include_payer_logos'].nil?
      query_params[:'user_token'] = opts[:'user_token'] if !opts[:'user_token'].nil?
      query_params[:'source_currency'] = opts[:'source_currency'] if !opts[:'source_currency'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CompaniesResp'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"CatalogApi.get_country_services",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_country_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns list of alternative service to a provided service
    # This **GET** endpoint is used to retrieve a list of alternative services to a provided service. <br> You can use this endpoint to obtain information about other available services and pricing offered by different companies for a particular destination. <br> To use this endpoint, you need to provide the `destination_token` as a required parameter in the URL Path. <br> The response will include a JSON array containing details for each company, including the company name, available alternative services, and pricing.
    # @param destination_token [String] Destination token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Service]
    def get_destination_token_alternatives(destination_token, opts = {})
      data, _status_code, _headers = get_destination_token_alternatives_with_http_info(destination_token, opts)
      data
    end

    # Returns list of alternative service to a provided service
    # This **GET** endpoint is used to retrieve a list of alternative services to a provided service. &lt;br&gt; You can use this endpoint to obtain information about other available services and pricing offered by different companies for a particular destination. &lt;br&gt; To use this endpoint, you need to provide the &#x60;destination_token&#x60; as a required parameter in the URL Path. &lt;br&gt; The response will include a JSON array containing details for each company, including the company name, available alternative services, and pricing.
    # @param destination_token [String] Destination token
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<(Service, Integer, Hash)>] Service data, response status code and response headers
    def get_destination_token_alternatives_with_http_info(destination_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_destination_token_alternatives ...'
      end
      # verify the required parameter 'destination_token' is set
      if @api_client.config.client_side_validation && destination_token.nil?
        fail ArgumentError, "Missing the required parameter 'destination_token' when calling CatalogApi.get_destination_token_alternatives"
      end
      # resource path
      local_var_path = '/service/{destination_token}/alternatives'.sub('{' + 'destination_token' + '}', CGI.escape(destination_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Service'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"CatalogApi.get_destination_token_alternatives",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_destination_token_alternatives\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get User Agreement
    # This **GET** endpoint is used to retrieve the user agreement for payout services. <br> You can use this endpoint to obtain information about the available user agreements for payout services offered by MassPay. <br> To use this endpoint, you need to provide the `ID` representing the user agreement as a required parameter in the URL Path. <br> The response will include the user agreement details.
    # @param id [Integer] Id representing user agreement (retrieved from OPTIONS call)
    # @param [Hash] opts the optional parameters
    # @return [GetUserAgreement200Response]
    def get_user_agreement(id, opts = {})
      data, _status_code, _headers = get_user_agreement_with_http_info(id, opts)
      data
    end

    # Get User Agreement
    # This **GET** endpoint is used to retrieve the user agreement for payout services. &lt;br&gt; You can use this endpoint to obtain information about the available user agreements for payout services offered by MassPay. &lt;br&gt; To use this endpoint, you need to provide the &#x60;ID&#x60; representing the user agreement as a required parameter in the URL Path. &lt;br&gt; The response will include the user agreement details.
    # @param id [Integer] Id representing user agreement (retrieved from OPTIONS call)
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetUserAgreement200Response, Integer, Hash)>] GetUserAgreement200Response data, response status code and response headers
    def get_user_agreement_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_user_agreement ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CatalogApi.get_user_agreement"
      end
      # resource path
      local_var_path = '/user-agreements'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'id'] = id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetUserAgreement200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"CatalogApi.get_user_agreement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_user_agreement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Available User Agreements
    # This OPTIONS endpoint is used to retrieve a list of available user agreements for payout services offered by MassPay without the content. <br> You can use this endpoint to obtain the names of available user agreements. <br> There are no required parameters needed to use this endpoint. <br> The response will include a list of user agreement names
    # @param [Hash] opts the optional parameters
    # @return [Array<GetUserAgreementsNames200ResponseInner>]
    def get_user_agreements_names(opts = {})
      data, _status_code, _headers = get_user_agreements_names_with_http_info(opts)
      data
    end

    # Get Available User Agreements
    # This OPTIONS endpoint is used to retrieve a list of available user agreements for payout services offered by MassPay without the content. &lt;br&gt; You can use this endpoint to obtain the names of available user agreements. &lt;br&gt; There are no required parameters needed to use this endpoint. &lt;br&gt; The response will include a list of user agreement names
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetUserAgreementsNames200ResponseInner>, Integer, Hash)>] Array<GetUserAgreementsNames200ResponseInner> data, response status code and response headers
    def get_user_agreements_names_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CatalogApi.get_user_agreements_names ...'
      end
      # resource path
      local_var_path = '/user-agreements'

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
      return_type = opts[:debug_return_type] || 'Array<GetUserAgreementsNames200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"CatalogApi.get_user_agreements_names",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:OPTIONS, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CatalogApi#get_user_agreements_names\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
