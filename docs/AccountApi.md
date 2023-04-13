# MassPayRubySdk::AccountApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_balance**](AccountApi.md#get_account_balance) | **GET** /account/balance | Get current available balance |
| [**get_account_statement**](AccountApi.md#get_account_statement) | **GET** /account/statement | Get certified account statement |


## get_account_balance

> <Array<AvailableBalanceTxnResp>> get_account_balance

Get current available balance

Retrieves the current available balances.

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

api_instance = MassPayRubySdk::AccountApi.new

begin
  # Get current available balance
  result = api_instance.get_account_balance
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AccountApi->get_account_balance: #{e}"
end
```

#### Using the get_account_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AvailableBalanceTxnResp>>, Integer, Hash)> get_account_balance_with_http_info

```ruby
begin
  # Get current available balance
  data, status_code, headers = api_instance.get_account_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AvailableBalanceTxnResp>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AccountApi->get_account_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AvailableBalanceTxnResp&gt;**](AvailableBalanceTxnResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_statement

> <GetAccountStatement200Response> get_account_statement(start_date, ending_date)

Get certified account statement

Retreived a certified PDF ledger statement for a provided timeframe

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

api_instance = MassPayRubySdk::AccountApi.new
start_date = Date.parse('Fri Jan 01 01:00:00 CET 2021') # Date | Starting date of the statement
ending_date = Date.parse('Mon Feb 01 01:00:00 CET 2021') # Date | Ending date of the statement (not more than 31 days than `start_date`)

begin
  # Get certified account statement
  result = api_instance.get_account_statement(start_date, ending_date)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AccountApi->get_account_statement: #{e}"
end
```

#### Using the get_account_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountStatement200Response>, Integer, Hash)> get_account_statement_with_http_info(start_date, ending_date)

```ruby
begin
  # Get certified account statement
  data, status_code, headers = api_instance.get_account_statement_with_http_info(start_date, ending_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountStatement200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AccountApi->get_account_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | Starting date of the statement |  |
| **ending_date** | **Date** | Ending date of the statement (not more than 31 days than &#x60;start_date&#x60;) |  |

### Return type

[**GetAccountStatement200Response**](GetAccountStatement200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

