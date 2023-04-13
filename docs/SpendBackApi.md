# MassPayRubySdk::SpendBackApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_spendbacks_by_token**](SpendBackApi.md#get_user_spendbacks_by_token) | **GET** /spendback/{user_token} | Get history of spend backs by user token |
| [**initiate_spendback**](SpendBackApi.md#initiate_spendback) | **POST** /spendback/{user_token} | Initiate a spend back transaction |


## get_user_spendbacks_by_token

> <Array<SpendBacks>> get_user_spendbacks_by_token(user_token, opts)

Get history of spend backs by user token

Gets a list of all historical spendbacks for a provided user token.

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

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## initiate_spendback

> <SpendBackTxnResp> initiate_spendback(user_token, opts)

Initiate a spend back transaction

Initiates a spend back transaction to a provided user token.

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

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

