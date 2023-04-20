# MassPayRubySdk::SpendBackApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_spendbacks_by_token**](SpendBackApi.md#get_user_spendbacks_by_token) | **GET** /spendback/{user_token} | Get history of spend backs by user token |
| [**initiate_spendback**](SpendBackApi.md#initiate_spendback) | **POST** /spendback/{user_token} | Initiate a spend back transaction |


## get_user_spendbacks_by_token

> <Array<SpendBacks>> get_user_spendbacks_by_token(user_token, opts)

Get history of spend backs by user token

This **GET** endpoint is used to retrieve the history of spendbacks for a specific user token. <br> You can use this endpoint to help manage your payment operations and track the usage of funds by your users. <br> To use this endpoint, you need to provide the `user_token` as a parameter in the URL Path. <br> The endpoint will then return a list of all the historical spendbacks for the provided user token. The response will contain a JSON array with details for each spendback transaction.

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

api_instance = MassPayRubySdk::SpendBackApi.new
user_token = 'usr_3f5d3fe8-a9c0-48c7-90ad-a72948730f56' # String | Token representing the user to fetch/initiate spend back
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Get history of spend backs by user token
  result = api_instance.get_user_spendbacks_by_token(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling SpendBackApi->get_user_spendbacks_by_token: #{e}"
end
```

#### Using the get_user_spendbacks_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SpendBacks>>, Integer, Hash)> get_user_spendbacks_by_token_with_http_info(user_token, opts)

```ruby
begin
  # Get history of spend backs by user token
  data, status_code, headers = api_instance.get_user_spendbacks_by_token_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SpendBacks>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling SpendBackApi->get_user_spendbacks_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to fetch/initiate spend back |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**Array&lt;SpendBacks&gt;**](SpendBacks.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## initiate_spendback

> <SpendBackTxnResp> initiate_spendback(user_token, opts)

Initiate a spend back transaction

This **POST** endpoint is used to initiate a spendback transaction to a provided user token. <br> You can use this endpoint to enable spendback transactions for your users and help them manage their funds more effectively. <br> To use this endpoint, you need to provide the `user_token` as a parameter in the URL Path, along with the required parameters in the request Body, including `client_spendback_id`, `source_token`, `source_currency_code` and `amount`. <br> The endpoint will then initiate the spendback transaction, transferring funds from the source token to the user token. The response will contain a JSON object indicating the status of the request and any relevant transaction details.

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

api_instance = MassPayRubySdk::SpendBackApi.new
user_token = 'usr_3f5d3fe8-a9c0-48c7-90ad-a72948730f56' # String | Token representing the user to fetch/initiate spend back
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  spend_back_txn: MassPayRubySdk::SpendBackTxn.new({client_spendback_id: 'aEjn345', source_token: 'source_token_example', source_currency_code: 'USD', amount: 100.5}) # SpendBackTxn | Spend back information
}

begin
  # Initiate a spend back transaction
  result = api_instance.initiate_spendback(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling SpendBackApi->initiate_spendback: #{e}"
end
```

#### Using the initiate_spendback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendBackTxnResp>, Integer, Hash)> initiate_spendback_with_http_info(user_token, opts)

```ruby
begin
  # Initiate a spend back transaction
  data, status_code, headers = api_instance.initiate_spendback_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendBackTxnResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling SpendBackApi->initiate_spendback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to fetch/initiate spend back |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **spend_back_txn** | [**SpendBackTxn**](SpendBackTxn.md) | Spend back information | [optional] |

### Return type

[**SpendBackTxnResp**](SpendBackTxnResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

