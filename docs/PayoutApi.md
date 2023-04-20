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

This **PUT** endpoint is used to commit a previously created payout transaction. <br> Once a payout transaction is created, you can use this endpoint to commit the transaction and initiate the actual payout. <br> To use this endpoint, you need to provide the `user_token` and `payout_token` of the payout transaction you want to commit in the URL Path. <br> The response will include a JSON object containing details about the committed payout transaction, including the `payout_token`, `payout_status`, `pickup_code` and possible errors.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: AUTHORIZER_NAME
  config.api_key['AUTHORIZER_NAME'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['AUTHORIZER_NAME'] = 'Bearer'
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_status

> <PayoutTxnResp> get_payout_status(user_token, payout_token, opts)

Get status of a payout by payout token

This **GET** endpoint is used to retrieve the status of a payout transaction for a user with the specified token and payout token. <br> You can use this endpoint to check the status of a specific payout transaction, including whether the payout has been successfully processed or if there was an error. <br> To use this endpoint, you need to provide the `user_token` and `payout_token` in the URL Path. <br> The response will include a JSON object containing details about the payout transaction.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: AUTHORIZER_NAME
  config.api_key['AUTHORIZER_NAME'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['AUTHORIZER_NAME'] = 'Bearer'
end

api_instance = MassPayRubySdk::PayoutApi.new
user_token = 'user_token_example' # String | Token representing the user to pay out
payout_token = 'payout_ed75acf2-1c35-4073-9adc-389084d1e96b' # String | Token representing the trsanaction. Retrieved from `/payout/{user_token}`
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  force_status_update: true, # Boolean | Attempts to get an updated status update from the payout destination
  include_payer_logo: true # Boolean | Whether to include the payer logo in base64 format. 
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
| **include_payer_logo** | **Boolean** | Whether to include the payer logo in base64 format.  | [optional] |

### Return type

[**PayoutTxnResp**](PayoutTxnResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_confirmation_details

> <GetTransactionConfirmationDetails200Response> get_transaction_confirmation_details(user_token, payout_token, opts)

Get transaction confirmation details

This **PATCH** endpoint is used to obtain a PDF document with all the details of a payout transaction for a user with the specified token and payout token. <br> You can use this endpoint to obtain confirmation details about a specific payout transaction. <br> To use this endpoint, you need to provide the `user_token` and `payout_token` in the URL Path. <br> The response will include a PDF document containing all the details of the payout transaction.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: AUTHORIZER_NAME
  config.api_key['AUTHORIZER_NAME'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['AUTHORIZER_NAME'] = 'Bearer'
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_payouts_by_token

> <Array<PayoutTxnResp>> get_user_payouts_by_token(user_token, opts)

Get history of payouts by user token

This **GET** endpoint is used to retrieve the payout history for a user with the specified token. <br> You can use this endpoint to view all payouts made to a user, including the `payout_token`, `destinantion_token` and `destination_amount`. <br> To use this endpoint, you need to provide the user token of the recipient in the URL Path. <br> The response will include a JSON object containing an array of payout transactions for the specified user, with each transaction including details such as the transaction ID, payout amount, currency, payout status, and date and time of the payout.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: AUTHORIZER_NAME
  config.api_key['AUTHORIZER_NAME'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['AUTHORIZER_NAME'] = 'Bearer'
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## initiate_payout

> <PayoutTxnResp> initiate_payout(user_token, payout_txn, opts)

Initiate a payout transaction

This **POST** endpoint is used to initiate a payout transaction from your account to a user with a specified token. <br> You can use this endpoint to pay out funds to your users, such as payments for services rendered or rewards for completing tasks. To use this endpoint, you need to provide the user token of the recipient in the URL Path. <br> The request body should include the funding source (`source_token`), payout destination (`destination_token`) and specify in which currency the payout should be made (`destination_currency_code`). <br> As a response API will return all details about your payout transaction.

### Examples

```ruby
require 'time'
require 'masspay_ruby_sdk'
# setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: AUTHORIZER_NAME
  config.api_key['AUTHORIZER_NAME'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['AUTHORIZER_NAME'] = 'Bearer'
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

