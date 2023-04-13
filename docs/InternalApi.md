# MassPayRubySdk::InternalApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commit_payout_txn_internal**](InternalApi.md#commit_payout_txn_internal) | **PUT** /payout/{user_token}/{payout_token}/internal | Commit payout transaction |
| [**decrypt_statement_jwt**](InternalApi.md#decrypt_statement_jwt) | **GET** /decrypt-statement-JWT | Decrypt Statement JWT |
| [**distributors_balances**](InternalApi.md#distributors_balances) | **GET** /distributors/balances | Retrieve available balances at distributors |
| [**generate_invoice**](InternalApi.md#generate_invoice) | **OPTIONS** /payout/{user_token}/{payout_token} | Generate Invoice |
| [**generate_pricing_list**](InternalApi.md#generate_pricing_list) | **POST** /generate_pricing_list | Generate pricing list |
| [**get_callback_company_id**](InternalApi.md#get_callback_company_id) | **GET** /callback/{company_id} | Transaction Status Callback |
| [**get_development_test**](InternalApi.md#get_development_test) | **GET** /development/test | Development |
| [**initiate_payout_internal**](InternalApi.md#initiate_payout_internal) | **POST** /payout/{user_token}/internal | Initiate a payout transaction |
| [**post_account_api_key**](InternalApi.md#post_account_api_key) | **POST** /account/api-key | Generate API Key |
| [**post_callback_company_id**](InternalApi.md#post_callback_company_id) | **POST** /callback/{company_id} | Transaction Status Callback |
| [**update_user_internal**](InternalApi.md#update_user_internal) | **PUT** /user/{user_token}/internal | Internal user update |
| [**upload_batch**](InternalApi.md#upload_batch) | **POST** /batch | Upload a batch |


## commit_payout_txn_internal

> <PayoutTxnCommitResp> commit_payout_txn_internal(user_token, payout_token, opts)

Commit payout transaction

Commits a previously initiated transaction.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_token = 'payout_token_example' # String | Token representing the trsanaction. Retrieved from `/payout/{user_token}`
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Commit payout transaction
  result = api_instance.commit_payout_txn_internal(user_token, payout_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->commit_payout_txn_internal: #{e}"
end
```

#### Using the commit_payout_txn_internal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTxnCommitResp>, Integer, Hash)> commit_payout_txn_internal_with_http_info(user_token, payout_token, opts)

```ruby
begin
  # Commit payout transaction
  data, status_code, headers = api_instance.commit_payout_txn_internal_with_http_info(user_token, payout_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTxnCommitResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->commit_payout_txn_internal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to pay out |  |
| **payout_token** | **String** | Token representing the trsanaction. Retrieved from &#x60;/payout/{user_token}&#x60; |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**PayoutTxnCommitResp**](PayoutTxnCommitResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## decrypt_statement_jwt

> Hash&lt;String, String&gt; decrypt_statement_jwt(token)

Decrypt Statement JWT



### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
token = 'token_example' # String | JWT token

begin
  # Decrypt Statement JWT
  result = api_instance.decrypt_statement_jwt(token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->decrypt_statement_jwt: #{e}"
end
```

#### Using the decrypt_statement_jwt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> decrypt_statement_jwt_with_http_info(token)

```ruby
begin
  # Decrypt Statement JWT
  data, status_code, headers = api_instance.decrypt_statement_jwt_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->decrypt_statement_jwt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | JWT token |  |

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## distributors_balances

> <Array<DistributorsBalances200ResponseInner>> distributors_balances

Retrieve available balances at distributors



### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new

begin
  # Retrieve available balances at distributors
  result = api_instance.distributors_balances
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->distributors_balances: #{e}"
end
```

#### Using the distributors_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DistributorsBalances200ResponseInner>>, Integer, Hash)> distributors_balances_with_http_info

```ruby
begin
  # Retrieve available balances at distributors
  data, status_code, headers = api_instance.distributors_balances_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DistributorsBalances200ResponseInner>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->distributors_balances_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;DistributorsBalances200ResponseInner&gt;**](DistributorsBalances200ResponseInner.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_invoice

> <GenerateInvoice200Response> generate_invoice(user_token, payout_token, opts)

Generate Invoice

Generate an invoice for the transaction

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_token = 'payout_ed75acf2-1c35-4073-9adc-389084d1e96b' # String | Token representing the trsanaction. Retrieved from `/payout/{user_token}`
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Generate Invoice
  result = api_instance.generate_invoice(user_token, payout_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->generate_invoice: #{e}"
end
```

#### Using the generate_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateInvoice200Response>, Integer, Hash)> generate_invoice_with_http_info(user_token, payout_token, opts)

```ruby
begin
  # Generate Invoice
  data, status_code, headers = api_instance.generate_invoice_with_http_info(user_token, payout_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateInvoice200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->generate_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to pay out |  |
| **payout_token** | **String** | Token representing the trsanaction. Retrieved from &#x60;/payout/{user_token}&#x60; |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**GenerateInvoice200Response**](GenerateInvoice200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_pricing_list

> generate_pricing_list(opts)

Generate pricing list

Generates a pricing list for the provided countries and email it to the requesting employee

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
opts = {
  generate_pricing_list_request: MassPayRubySdk::GeneratePricingListRequest.new({amount: 105.22}) # GeneratePricingListRequest | 
}

begin
  # Generate pricing list
  api_instance.generate_pricing_list(opts)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->generate_pricing_list: #{e}"
end
```

#### Using the generate_pricing_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> generate_pricing_list_with_http_info(opts)

```ruby
begin
  # Generate pricing list
  data, status_code, headers = api_instance.generate_pricing_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->generate_pricing_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_pricing_list_request** | [**GeneratePricingListRequest**](GeneratePricingListRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_callback_company_id

> get_callback_company_id(company_id)

Transaction Status Callback

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'

api_instance = MassPayRubySdk::InternalApi.new
company_id = 'company_id_example' # String | 

begin
  # Transaction Status Callback
  api_instance.get_callback_company_id(company_id)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->get_callback_company_id: #{e}"
end
```

#### Using the get_callback_company_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_callback_company_id_with_http_info(company_id)

```ruby
begin
  # Transaction Status Callback
  data, status_code, headers = api_instance.get_callback_company_id_with_http_info(company_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->get_callback_company_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_development_test

> get_development_test

Development



### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new

begin
  # Development
  api_instance.get_development_test
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->get_development_test: #{e}"
end
```

#### Using the get_development_test_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_development_test_with_http_info

```ruby
begin
  # Development
  data, status_code, headers = api_instance.get_development_test_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->get_development_test_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## initiate_payout_internal

> <PayoutTxnResp> initiate_payout_internal(user_token, payout_txn, opts)

Initiate a payout transaction

Initiates a payout transaction to a provided user token.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_txn = MassPayRubySdk::PayoutTxn.new({destination_currency_code: 'MXN', source_token: 'source_token_example', destination_token: 'destination_token_example'}) # PayoutTxn | Payout parameters for a quote
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  limit: 8.14 # Float | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
}

begin
  # Initiate a payout transaction
  result = api_instance.initiate_payout_internal(user_token, payout_txn, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->initiate_payout_internal: #{e}"
end
```

#### Using the initiate_payout_internal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTxnResp>, Integer, Hash)> initiate_payout_internal_with_http_info(user_token, payout_txn, opts)

```ruby
begin
  # Initiate a payout transaction
  data, status_code, headers = api_instance.initiate_payout_internal_with_http_info(user_token, payout_txn, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTxnResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->initiate_payout_internal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to pay out |  |
| **payout_txn** | [**PayoutTxn**](PayoutTxn.md) | Payout parameters for a quote |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **limit** | **Float** | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent | [optional] |

### Return type

[**PayoutTxnResp**](PayoutTxnResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_account_api_key

> <PostAccountApiKey200Response> post_account_api_key(opts)

Generate API Key

Generate API access key

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
opts = {
  post_account_api_key_request: MassPayRubySdk::PostAccountApiKeyRequest.new({username: 'username_example', client_name: 'client_name_example', client_id: 3.56}) # PostAccountApiKeyRequest | 
}

begin
  # Generate API Key
  result = api_instance.post_account_api_key(opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->post_account_api_key: #{e}"
end
```

#### Using the post_account_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAccountApiKey200Response>, Integer, Hash)> post_account_api_key_with_http_info(opts)

```ruby
begin
  # Generate API Key
  data, status_code, headers = api_instance.post_account_api_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAccountApiKey200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->post_account_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_account_api_key_request** | [**PostAccountApiKeyRequest**](PostAccountApiKeyRequest.md) |  | [optional] |

### Return type

[**PostAccountApiKey200Response**](PostAccountApiKey200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_callback_company_id

> post_callback_company_id(company_id, opts)

Transaction Status Callback

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'

api_instance = MassPayRubySdk::InternalApi.new
company_id = 'company_id_example' # String | 
opts = {
  body: { ... } # Object | 
}

begin
  # Transaction Status Callback
  api_instance.post_callback_company_id(company_id, opts)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->post_callback_company_id: #{e}"
end
```

#### Using the post_callback_company_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_callback_company_id_with_http_info(company_id, opts)

```ruby
begin
  # Transaction Status Callback
  data, status_code, headers = api_instance.post_callback_company_id_with_http_info(company_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->post_callback_company_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **String** |  |  |
| **body** | **Object** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_user_internal

> <StoredUser> update_user_internal(user_token, update_user, opts)

Internal user update

Updates profile information for a provided user token.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
user_token = 'user_token_example' # String | user token that need to be updated
update_user = MassPayRubySdk::UpdateUser.new({status: 'ACTIVE', internal_user_id: '4324-rOzk', address1: '2000 main st', city: 'Santa Monica', state_province: 'CA', postal_code: '90405', country: 'USA', first_name: 'John', last_name: 'Doe', email: 'jdoe@gmail.com'}) # UpdateUser | Updated user object
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  is_compliance_update: true, # Boolean | Whether this update was completed by compliance team
  employee_username: 'employee_username_example' # String | Hashed username of the employee making the update
}

begin
  # Internal user update
  result = api_instance.update_user_internal(user_token, update_user, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->update_user_internal: #{e}"
end
```

#### Using the update_user_internal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoredUser>, Integer, Hash)> update_user_internal_with_http_info(user_token, update_user, opts)

```ruby
begin
  # Internal user update
  data, status_code, headers = api_instance.update_user_internal_with_http_info(user_token, update_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoredUser>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->update_user_internal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | user token that need to be updated |  |
| **update_user** | [**UpdateUser**](UpdateUser.md) | Updated user object |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **is_compliance_update** | **Boolean** | Whether this update was completed by compliance team | [optional] |
| **employee_username** | **String** | Hashed username of the employee making the update | [optional] |

### Return type

[**StoredUser**](StoredUser.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_batch

> upload_batch(opts)

Upload a batch

Uploads an XLSX file with batch instructions

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = MassPayRubySdk::InternalApi.new
opts = {
  upload_batch_request: MassPayRubySdk::UploadBatchRequest.new # UploadBatchRequest | 
}

begin
  # Upload a batch
  api_instance.upload_batch(opts)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->upload_batch: #{e}"
end
```

#### Using the upload_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> upload_batch_with_http_info(opts)

```ruby
begin
  # Upload a batch
  data, status_code, headers = api_instance.upload_batch_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling InternalApi->upload_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_batch_request** | [**UploadBatchRequest**](UploadBatchRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

