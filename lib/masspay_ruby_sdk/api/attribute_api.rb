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
  class AttributeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get user attributes for destination_token
    # This **GET** endpoint is used to retrieve user attributes for a specific destination token. <br> You can use this endpoint to retrieve user attributes and provide personalized service to your users based on their preferences, demographic data, or other relevant information. <br> To use this endpoint, you need to provide the `user_token`, `destination_token`, and currency as parameters in the URL Path. <br> The endpoint will then return all the required attributes for the provided user for the specified destination token. If any of the attributes already have a stored value, it will be returned as well.
    # @param currency [String] The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. 
    # @param user_token [String] Token representing the user to retrieve attributes for
    # @param destination_token [String] Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<AttrsRequirement>]
    def get_attrs(currency, user_token, destination_token, opts = {})
      data, _status_code, _headers = get_attrs_with_http_info(currency, user_token, destination_token, opts)
      data
    end

    # Get user attributes for destination_token
    # This **GET** endpoint is used to retrieve user attributes for a specific destination token. &lt;br&gt; You can use this endpoint to retrieve user attributes and provide personalized service to your users based on their preferences, demographic data, or other relevant information. &lt;br&gt; To use this endpoint, you need to provide the &#x60;user_token&#x60;, &#x60;destination_token&#x60;, and currency as parameters in the URL Path. &lt;br&gt; The endpoint will then return all the required attributes for the provided user for the specified destination token. If any of the attributes already have a stored value, it will be returned as well.
    # @param currency [String] The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. 
    # @param user_token [String] Token representing the user to retrieve attributes for
    # @param destination_token [String] Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<(Array<AttrsRequirement>, Integer, Hash)>] Array<AttrsRequirement> data, response status code and response headers
    def get_attrs_with_http_info(currency, user_token, destination_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttributeApi.get_attrs ...'
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling AttributeApi.get_attrs"
      end
      if @api_client.config.client_side_validation && currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency" when calling AttributeApi.get_attrs, the character length must be smaller than or equal to 3.'
      end

      if @api_client.config.client_side_validation && currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency" when calling AttributeApi.get_attrs, the character length must be great than or equal to 3.'
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if @api_client.config.client_side_validation && currency !~ pattern
        fail ArgumentError, "invalid value for 'currency' when calling AttributeApi.get_attrs, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling AttributeApi.get_attrs"
      end
      # verify the required parameter 'destination_token' is set
      if @api_client.config.client_side_validation && destination_token.nil?
        fail ArgumentError, "Missing the required parameter 'destination_token' when calling AttributeApi.get_attrs"
      end
      # resource path
      local_var_path = '/attribute/{user_token}/{destination_token}/{currency}'.sub('{' + 'currency' + '}', CGI.escape(currency.to_s)).sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s)).sub('{' + 'destination_token' + '}', CGI.escape(destination_token.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<AttrsRequirement>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"AttributeApi.get_attrs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributeApi#get_attrs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Store user attributes
    # This **POST** endpoint is used to store user attributes, allowing you to associate additional data with a user token. <br> To use this endpoint, you need to provide the `user_token`, `destination_token`, and currency as parameters in the URL Path. You also need to provide the attribute values as JSON parameters in the Request body. <br> If existing attributes are already stored for the user, this call will override their values.
    # @param currency [String] The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. 
    # @param user_token [String] Token representing the user to store attributes for
    # @param destination_token [String] Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback. 
    # @param attr_txn [AttrTxn] Attr parameters to store
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [nil]
    def store_attrs(currency, user_token, destination_token, attr_txn, opts = {})
      store_attrs_with_http_info(currency, user_token, destination_token, attr_txn, opts)
      nil
    end

    # Store user attributes
    # This **POST** endpoint is used to store user attributes, allowing you to associate additional data with a user token. &lt;br&gt; To use this endpoint, you need to provide the &#x60;user_token&#x60;, &#x60;destination_token&#x60;, and currency as parameters in the URL Path. You also need to provide the attribute values as JSON parameters in the Request body. &lt;br&gt; If existing attributes are already stored for the user, this call will override their values.
    # @param currency [String] The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. 
    # @param user_token [String] Token representing the user to store attributes for
    # @param destination_token [String] Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback. 
    # @param attr_txn [AttrTxn] Attr parameters to store
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def store_attrs_with_http_info(currency, user_token, destination_token, attr_txn, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AttributeApi.store_attrs ...'
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling AttributeApi.store_attrs"
      end
      if @api_client.config.client_side_validation && currency.to_s.length > 3
        fail ArgumentError, 'invalid value for "currency" when calling AttributeApi.store_attrs, the character length must be smaller than or equal to 3.'
      end

      if @api_client.config.client_side_validation && currency.to_s.length < 3
        fail ArgumentError, 'invalid value for "currency" when calling AttributeApi.store_attrs, the character length must be great than or equal to 3.'
      end

      pattern = Regexp.new(/^[A-Z]{3}$/)
      if @api_client.config.client_side_validation && currency !~ pattern
        fail ArgumentError, "invalid value for 'currency' when calling AttributeApi.store_attrs, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling AttributeApi.store_attrs"
      end
      # verify the required parameter 'destination_token' is set
      if @api_client.config.client_side_validation && destination_token.nil?
        fail ArgumentError, "Missing the required parameter 'destination_token' when calling AttributeApi.store_attrs"
      end
      # verify the required parameter 'attr_txn' is set
      if @api_client.config.client_side_validation && attr_txn.nil?
        fail ArgumentError, "Missing the required parameter 'attr_txn' when calling AttributeApi.store_attrs"
      end
      # resource path
      local_var_path = '/attribute/{user_token}/{destination_token}/{currency}'.sub('{' + 'currency' + '}', CGI.escape(currency.to_s)).sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s)).sub('{' + 'destination_token' + '}', CGI.escape(destination_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Idempotency-Key'] = opts[:'idempotency_key'] if !opts[:'idempotency_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(attr_txn)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"AttributeApi.store_attrs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AttributeApi#store_attrs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
