# MassPayRubySdk::PayoutApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**commit_payout_txn**](PayoutApi.md#commit_payout_txn) | **PUT** /payout/{user_token}/{payout_token} | Commit payout transaction |
| [**get_payout_status**](PayoutApi.md#get_payout_status) | **GET** /payout/{user_token}/{payout_token} | Get status of a payout by payout token |
| [**get_transaction_confirmation_details**](PayoutApi.md#get_transaction_confirmation_details) | **PATCH** /payout/{user_token}/{payout_token} | Get transaction confirmation details |
| [**get_user_payouts_by_token**](PayoutApi.md#get_user_payouts_by_token) | **GET** /payout/{user_token} | Get history of payouts by user token |
| [**initiate_payout**](PayoutApi.md#initiate_payout) | **POST** /payout/{user_token} | Initiate a payout transaction |


## commit_payout_txn

> <PayoutTxnCommitResp> commit_payout_txn(user_token, payout_token, opts)

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

api_instance = MassPayRubySdk::PayoutApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_token = 'payout_token_example' # String | Token representing the trsanaction. Retrieved from `/payout/{user_token}`
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Commit payout transaction
  result = api_instance.commit_payout_txn(user_token, payout_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->commit_payout_txn: #{e}"
end
```

#### Using the commit_payout_txn_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTxnCommitResp>, Integer, Hash)> commit_payout_txn_with_http_info(user_token, payout_token, opts)

```ruby
begin
  # Commit payout transaction
  data, status_code, headers = api_instance.commit_payout_txn_with_http_info(user_token, payout_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTxnCommitResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->commit_payout_txn_with_http_info: #{e}"
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


## get_payout_status

> <PayoutTxnResp> get_payout_status(user_token, payout_token, opts)

Get status of a payout by payout token

Retrieves information including status update for a payout token

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

api_instance = MassPayRubySdk::PayoutApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_token = 'payout_ed75acf2-1c35-4073-9adc-389084d1e96b' # String | Token representing the trsanaction. Retrieved from `/payout/{user_token}`
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  force_status_update: true # Boolean | Attempts to get an updated status update from the payout destination
}

begin
  # Get status of a payout by payout token
  result = api_instance.get_payout_status(user_token, payout_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->get_payout_status: #{e}"
end
```

#### Using the get_payout_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTxnResp>, Integer, Hash)> get_payout_status_with_http_info(user_token, payout_token, opts)

```ruby
begin
  # Get status of a payout by payout token
  data, status_code, headers = api_instance.get_payout_status_with_http_info(user_token, payout_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTxnResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->get_payout_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to pay out |  |
| **payout_token** | **String** | Token representing the trsanaction. Retrieved from &#x60;/payout/{user_token}&#x60; |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **force_status_update** | **Boolean** | Attempts to get an updated status update from the payout destination | [optional][default to false] |

### Return type

[**PayoutTxnResp**](PayoutTxnResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_confirmation_details

> <GetTransactionConfirmationDetails200Response> get_transaction_confirmation_details(user_token, payout_token, opts)

Get transaction confirmation details

Obtains a PDF with all the details of the payout

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

api_instance = MassPayRubySdk::PayoutApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_token = 'payout_ed75acf2-1c35-4073-9adc-389084d1e96b' # String | Token representing the trsanaction. Retrieved from `/payout/{user_token}`
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Get transaction confirmation details
  result = api_instance.get_transaction_confirmation_details(user_token, payout_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->get_transaction_confirmation_details: #{e}"
end
```

#### Using the get_transaction_confirmation_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactionConfirmationDetails200Response>, Integer, Hash)> get_transaction_confirmation_details_with_http_info(user_token, payout_token, opts)

```ruby
begin
  # Get transaction confirmation details
  data, status_code, headers = api_instance.get_transaction_confirmation_details_with_http_info(user_token, payout_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactionConfirmationDetails200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->get_transaction_confirmation_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to pay out |  |
| **payout_token** | **String** | Token representing the trsanaction. Retrieved from &#x60;/payout/{user_token}&#x60; |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**GetTransactionConfirmationDetails200Response**](GetTransactionConfirmationDetails200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_payouts_by_token

> <Array<PayoutTxnResp>> get_user_payouts_by_token(user_token, opts)

Get history of payouts by user token

Gets a list of all historical payouts for a provided user token.

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

api_instance = MassPayRubySdk::PayoutApi.new
user_token = 'user_token_example' # String | The user token that needs to be fetched.
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  include_payer_logos: true # Boolean | Whether to include the payers logo in base64 format. 
}

begin
  # Get history of payouts by user token
  result = api_instance.get_user_payouts_by_token(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->get_user_payouts_by_token: #{e}"
end
```

#### Using the get_user_payouts_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PayoutTxnResp>>, Integer, Hash)> get_user_payouts_by_token_with_http_info(user_token, opts)

```ruby
begin
  # Get history of payouts by user token
  data, status_code, headers = api_instance.get_user_payouts_by_token_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PayoutTxnResp>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->get_user_payouts_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | The user token that needs to be fetched. |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **include_payer_logos** | **Boolean** | Whether to include the payers logo in base64 format.  | [optional][default to false] |

### Return type

[**Array&lt;PayoutTxnResp&gt;**](PayoutTxnResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## initiate_payout

> <PayoutTxnResp> initiate_payout(user_token, payout_txn, opts)

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

api_instance = MassPayRubySdk::PayoutApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_txn = MassPayRubySdk::PayoutTxn.new({destination_currency_code: 'MXN', source_token: 'source_token_example', destination_token: 'destination_token_example'}) # PayoutTxn | Payout parameters for a quote
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  limit: 8.14 # Float | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
}

begin
  # Initiate a payout transaction
  result = api_instance.initiate_payout(user_token, payout_txn, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->initiate_payout: #{e}"
end
```

#### Using the initiate_payout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTxnResp>, Integer, Hash)> initiate_payout_with_http_info(user_token, payout_txn, opts)

```ruby
begin
  # Initiate a payout transaction
  data, status_code, headers = api_instance.initiate_payout_with_http_info(user_token, payout_txn, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTxnResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling PayoutApi->initiate_payout_with_http_info: #{e}"
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

