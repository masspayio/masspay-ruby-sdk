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
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a user
    # To create a user, send a `POST` request to the `/user` endpoint and include the user details in JSON format in the request body. Upon creation of a user, you'll receive a user_token which would be used to interact with that user.
    # @param user [User] Created user object
    # @param [Hash] opts the optional parameters
    # @return [StoredUser]
    def create_user(user, opts = {})
      data, _status_code, _headers = create_user_with_http_info(user, opts)
      data
    end

    # Create a user
    # To create a user, send a &#x60;POST&#x60; request to the &#x60;/user&#x60; endpoint and include the user details in JSON format in the request body. Upon creation of a user, you&#39;ll receive a user_token which would be used to interact with that user.
    # @param user [User] Created user object
    # @param [Hash] opts the optional parameters
    # @return [Array<(StoredUser, Integer, Hash)>] StoredUser data, response status code and response headers
    def create_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.create_user ...'
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UserApi.create_user"
      end
      # resource path
      local_var_path = '/user'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(user)

      # return_type
      return_type = opts[:debug_return_type] || 'StoredUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user by user token
    # Gets a user profile for a provided user token.
    # @param user_token [String] The user token that needs to be fetched.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [StoredUser]
    def get_user_by_token(user_token, opts = {})
      data, _status_code, _headers = get_user_by_token_with_http_info(user_token, opts)
      data
    end

    # Get user by user token
    # Gets a user profile for a provided user token.
    # @param user_token [String] The user token that needs to be fetched.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<(StoredUser, Integer, Hash)>] StoredUser data, response status code and response headers
    def get_user_by_token_with_http_info(user_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user_by_token ...'
      end
      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling UserApi.get_user_by_token"
      end
      # resource path
      local_var_path = '/user/{user_token}'.sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s))

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
      return_type = opts[:debug_return_type] || 'StoredUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.get_user_by_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_by_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Transactions history
    # Retrieve list of all tranasctions (payouts/loads/spendbacks) for a provider user.
    # @param user_token [String] Token representing the user to get transactions history for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @option opts [Float] :number_of_records Number of records to return (default to 10)
    # @option opts [Date] :start_date Starting date
    # @option opts [Date] :end_date Ending date
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [String] :type Filter particular types of transactions. Comma separated to include multiple types
    # @option opts [String] :wallet_token Filter transactions to include only provided wallet token.
    # @option opts [Boolean] :show_all_clients Wether to show transactions from all clients (default to false)
    # @return [Array<TxnHistoryResp>]
    def get_user_history(user_token, opts = {})
      data, _status_code, _headers = get_user_history_with_http_info(user_token, opts)
      data
    end

    # Transactions history
    # Retrieve list of all tranasctions (payouts/loads/spendbacks) for a provider user.
    # @param user_token [String] Token representing the user to get transactions history for
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @option opts [Float] :number_of_records Number of records to return (default to 10)
    # @option opts [Date] :start_date Starting date
    # @option opts [Date] :end_date Ending date
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [String] :type Filter particular types of transactions. Comma separated to include multiple types
    # @option opts [String] :wallet_token Filter transactions to include only provided wallet token.
    # @option opts [Boolean] :show_all_clients Wether to show transactions from all clients (default to false)
    # @return [Array<(Array<TxnHistoryResp>, Integer, Hash)>] Array<TxnHistoryResp> data, response status code and response headers
    def get_user_history_with_http_info(user_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user_history ...'
      end
      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling UserApi.get_user_history"
      end
      pattern = Regexp.new(/^[\d]{4}-[\d]{2}-[\d]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'start_date'].nil? && opts[:'start_date'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"start_date\"]' when calling UserApi.get_user_history, must conform to the pattern #{pattern}."
      end

      pattern = Regexp.new(/^[\d]{4}-[\d]{2}-[\d]{2}$/)
      if @api_client.config.client_side_validation && !opts[:'end_date'].nil? && opts[:'end_date'] !~ pattern
        fail ArgumentError, "invalid value for 'opts[:\"end_date\"]' when calling UserApi.get_user_history, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling UserApi.get_user_history, must be greater than or equal to 1.'
      end

      allowable_values = ["payout", "load", "spendback"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/user/{user_token}/history'.sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'number_of_records'] = opts[:'number_of_records'] if !opts[:'number_of_records'].nil?
      query_params[:'start_date'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'end_date'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'wallet_token'] = opts[:'wallet_token'] if !opts[:'wallet_token'].nil?
      query_params[:'show_all_clients'] = opts[:'show_all_clients'] if !opts[:'show_all_clients'].nil?

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
      return_type = opts[:debug_return_type] || 'Array<TxnHistoryResp>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.get_user_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Au10tix session link
    # @param user_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetUserUserTokenKycAu10tix200Response]
    def get_user_user_token_kyc_au10tix(user_token, opts = {})
      data, _status_code, _headers = get_user_user_token_kyc_au10tix_with_http_info(user_token, opts)
      data
    end

    # Get an Au10tix session link
    # @param user_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetUserUserTokenKycAu10tix200Response, Integer, Hash)>] GetUserUserTokenKycAu10tix200Response data, response status code and response headers
    def get_user_user_token_kyc_au10tix_with_http_info(user_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user_user_token_kyc_au10tix ...'
      end
      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling UserApi.get_user_user_token_kyc_au10tix"
      end
      # resource path
      local_var_path = '/user/{user_token}/kyc/au10tix'.sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s))

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
      return_type = opts[:debug_return_type] || 'GetUserUserTokenKycAu10tix200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.get_user_user_token_kyc_au10tix",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_user_token_kyc_au10tix\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Veriff session link
    # @param user_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetUserUserTokenKycVeriiff200Response]
    def get_user_user_token_kyc_veriiff(user_token, opts = {})
      data, _status_code, _headers = get_user_user_token_kyc_veriiff_with_http_info(user_token, opts)
      data
    end

    # Get a Veriff session link
    # @param user_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetUserUserTokenKycVeriiff200Response, Integer, Hash)>] GetUserUserTokenKycVeriiff200Response data, response status code and response headers
    def get_user_user_token_kyc_veriiff_with_http_info(user_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.get_user_user_token_kyc_veriiff ...'
      end
      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling UserApi.get_user_user_token_kyc_veriiff"
      end
      # resource path
      local_var_path = '/user/{user_token}/kyc/veriff'.sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s))

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
      return_type = opts[:debug_return_type] || 'GetUserUserTokenKycVeriiff200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.get_user_user_token_kyc_veriiff",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_user_token_kyc_veriiff\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updated user
    # Updates profile information for a provided user token.
    # @param user_token [String] user token that need to be updated
    # @param update_user [UpdateUser] Updated user object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [StoredUser]
    def update_user(user_token, update_user, opts = {})
      data, _status_code, _headers = update_user_with_http_info(user_token, update_user, opts)
      data
    end

    # Updated user
    # Updates profile information for a provided user token.
    # @param user_token [String] user token that need to be updated
    # @param update_user [UpdateUser] Updated user object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<(StoredUser, Integer, Hash)>] StoredUser data, response status code and response headers
    def update_user_with_http_info(user_token, update_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.update_user ...'
      end
      # verify the required parameter 'user_token' is set
      if @api_client.config.client_side_validation && user_token.nil?
        fail ArgumentError, "Missing the required parameter 'user_token' when calling UserApi.update_user"
      end
      # verify the required parameter 'update_user' is set
      if @api_client.config.client_side_validation && update_user.nil?
        fail ArgumentError, "Missing the required parameter 'update_user' when calling UserApi.update_user"
      end
      # resource path
      local_var_path = '/user/{user_token}'.sub('{' + 'user_token' + '}', CGI.escape(user_token.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_user)

      # return_type
      return_type = opts[:debug_return_type] || 'StoredUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lookup an existing user
    # Looksup whether a user with the provided email and first name exist
    # @param email [String] User&#39;s email address. Required if First Name is provided
    # @param first_name [String] User&#39;s first name. Required if email is provided
    # @param internal_user_id [String] A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ |. Required if email and first name are not provided
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [FoundUser]
    def user_lookup(email, first_name, internal_user_id, opts = {})
      data, _status_code, _headers = user_lookup_with_http_info(email, first_name, internal_user_id, opts)
      data
    end

    # Lookup an existing user
    # Looksup whether a user with the provided email and first name exist
    # @param email [String] User&#39;s email address. Required if First Name is provided
    # @param first_name [String] User&#39;s first name. Required if email is provided
    # @param internal_user_id [String] A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ |. Required if email and first name are not provided
    # @param [Hash] opts the optional parameters
    # @option opts [String] :idempotency_key Unique key to prevent duplicate processing
    # @return [Array<(FoundUser, Integer, Hash)>] FoundUser data, response status code and response headers
    def user_lookup_with_http_info(email, first_name, internal_user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UserApi.user_lookup ...'
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling UserApi.user_lookup"
      end
      # verify the required parameter 'first_name' is set
      if @api_client.config.client_side_validation && first_name.nil?
        fail ArgumentError, "Missing the required parameter 'first_name' when calling UserApi.user_lookup"
      end
      # verify the required parameter 'internal_user_id' is set
      if @api_client.config.client_side_validation && internal_user_id.nil?
        fail ArgumentError, "Missing the required parameter 'internal_user_id' when calling UserApi.user_lookup"
      end
      # resource path
      local_var_path = '/user/lookup'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = email
      query_params[:'first_name'] = first_name
      query_params[:'internal_user_id'] = internal_user_id

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
      return_type = opts[:debug_return_type] || 'FoundUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'AUTHORIZER_NAME']

      new_options = opts.merge(
        :operation => :"UserApi.user_lookup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#user_lookup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end