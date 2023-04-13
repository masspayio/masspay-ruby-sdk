# MassPayRubySdk::LoadApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_user_load**](LoadApi.md#cancel_user_load) | **DELETE** /load/{user_token} | Reverse a user load |
| [**create_autopay_rule**](LoadApi.md#create_autopay_rule) | **POST** /wallet/{user_token}/{wallet_token}/autopay | Add autopay rule |
| [**delete_autopay_rule**](LoadApi.md#delete_autopay_rule) | **DELETE** /wallet/{user_token}/{wallet_token}/autopay | Delete autopay rule |
| [**get_autopay_rules**](LoadApi.md#get_autopay_rules) | **GET** /wallet/{user_token}/{wallet_token}/autopay | Get all autopay rules |
| [**get_user_loads_by_token**](LoadApi.md#get_user_loads_by_token) | **GET** /load/{user_token} | Get history of loads by user token |
| [**load_user**](LoadApi.md#load_user) | **POST** /load/{user_token} | Initiate a load transaction |
| [**resend_load_notification**](LoadApi.md#resend_load_notification) | **PUT** /load/{user_token} | Resend Load Notification |


## cancel_user_load

> cancel_user_load(user_token, load_token, opts)

Reverse a user load

Reverse a load that was already processed. If the load is still in scheduled status, it will mark it as cancelled

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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | Token representing the user to load/fetch loads for
load_token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Load token
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Reverse a user load
  api_instance.cancel_user_load(user_token, load_token, opts)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->cancel_user_load: #{e}"
end
```

#### Using the cancel_user_load_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_user_load_with_http_info(user_token, load_token, opts)

```ruby
begin
  # Reverse a user load
  data, status_code, headers = api_instance.cancel_user_load_with_http_info(user_token, load_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->cancel_user_load_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to load/fetch loads for |  |
| **load_token** | **String** | Load token |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_autopay_rule

> <AutopayResp> create_autopay_rule(user_token, wallet_token, opts)

Add autopay rule

Create an autopay rule that will automatically initiate a payout whenever the `wallet_token` is loaded

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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | Token representing the user who owns the wallet
wallet_token = 'wallet_token_example' # String | Token representing the wallet
opts = {
  autopay_rule: MassPayRubySdk::AutopayRule.new({destination_token: 'dest_d2138fd0-00be-45a8-985f-4f5bde500962', percentage: 50}) # AutopayRule | Autopay rule configuration
}

begin
  # Add autopay rule
  result = api_instance.create_autopay_rule(user_token, wallet_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->create_autopay_rule: #{e}"
end
```

#### Using the create_autopay_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutopayResp>, Integer, Hash)> create_autopay_rule_with_http_info(user_token, wallet_token, opts)

```ruby
begin
  # Add autopay rule
  data, status_code, headers = api_instance.create_autopay_rule_with_http_info(user_token, wallet_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutopayResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->create_autopay_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user who owns the wallet |  |
| **wallet_token** | **String** | Token representing the wallet |  |
| **autopay_rule** | [**AutopayRule**](AutopayRule.md) | Autopay rule configuration | [optional] |

### Return type

[**AutopayResp**](AutopayResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_autopay_rule

> delete_autopay_rule(user_token, wallet_token, token)

Delete autopay rule

Deletes an autopay rule

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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | Token representing the user who owns the wallet
wallet_token = 'wallet_token_example' # String | Token representing the wallet
token = 'autopay_3684cc43-fe3b-4994-8ca1-7dc0db94430f' # String | Autopay token to delete

begin
  # Delete autopay rule
  api_instance.delete_autopay_rule(user_token, wallet_token, token)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->delete_autopay_rule: #{e}"
end
```

#### Using the delete_autopay_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_autopay_rule_with_http_info(user_token, wallet_token, token)

```ruby
begin
  # Delete autopay rule
  data, status_code, headers = api_instance.delete_autopay_rule_with_http_info(user_token, wallet_token, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->delete_autopay_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user who owns the wallet |  |
| **wallet_token** | **String** | Token representing the wallet |  |
| **token** | **String** | Autopay token to delete |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_autopay_rules

> <Array<AutopayResp>> get_autopay_rules(user_token, wallet_token)

Get all autopay rules

Obtain list of all autopay rules currently applied to this wallet

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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | Token representing the user who owns the wallet
wallet_token = 'wallet_token_example' # String | Token representing the wallet

begin
  # Get all autopay rules
  result = api_instance.get_autopay_rules(user_token, wallet_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->get_autopay_rules: #{e}"
end
```

#### Using the get_autopay_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AutopayResp>>, Integer, Hash)> get_autopay_rules_with_http_info(user_token, wallet_token)

```ruby
begin
  # Get all autopay rules
  data, status_code, headers = api_instance.get_autopay_rules_with_http_info(user_token, wallet_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AutopayResp>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->get_autopay_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user who owns the wallet |  |
| **wallet_token** | **String** | Token representing the wallet |  |

### Return type

[**Array&lt;AutopayResp&gt;**](AutopayResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_loads_by_token

> <Array<Loads>> get_user_loads_by_token(user_token, opts)

Get history of loads by user token

Gets a transaction history of all loads that were made to the provided user token, including scheduled loads.

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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | The user token that needs to be fetched.
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Get history of loads by user token
  result = api_instance.get_user_loads_by_token(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->get_user_loads_by_token: #{e}"
end
```

#### Using the get_user_loads_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Loads>>, Integer, Hash)> get_user_loads_by_token_with_http_info(user_token, opts)

```ruby
begin
  # Get history of loads by user token
  data, status_code, headers = api_instance.get_user_loads_by_token_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Loads>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->get_user_loads_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | The user token that needs to be fetched. |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**Array&lt;Loads&gt;**](Loads.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## load_user

> <LoadTxnResp> load_user(user_token, load_txn, opts)

Initiate a load transaction

Initiates a load of funds into a user token's wallet.

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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | Token representing the user to load
load_txn = MassPayRubySdk::LoadTxn.new({client_load_id: 'aEjn345', source_token: 'ba4275f2-bae1-488d-9d6f-20af1cd83574', amount: 100.5}) # LoadTxn | Load information
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Initiate a load transaction
  result = api_instance.load_user(user_token, load_txn, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->load_user: #{e}"
end
```

#### Using the load_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoadTxnResp>, Integer, Hash)> load_user_with_http_info(user_token, load_txn, opts)

```ruby
begin
  # Initiate a load transaction
  data, status_code, headers = api_instance.load_user_with_http_info(user_token, load_txn, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoadTxnResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->load_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to load |  |
| **load_txn** | [**LoadTxn**](LoadTxn.md) | Load information |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**LoadTxnResp**](LoadTxnResp.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_load_notification

> <ResendLoadNotification200Response> resend_load_notification(user_token, load_token, opts)

Resend Load Notification



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

api_instance = MassPayRubySdk::LoadApi.new
user_token = 'user_token_example' # String | Token representing the user to load/fetch loads for
load_token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Load token
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Resend Load Notification
  result = api_instance.resend_load_notification(user_token, load_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->resend_load_notification: #{e}"
end
```

#### Using the resend_load_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResendLoadNotification200Response>, Integer, Hash)> resend_load_notification_with_http_info(user_token, load_token, opts)

```ruby
begin
  # Resend Load Notification
  data, status_code, headers = api_instance.resend_load_notification_with_http_info(user_token, load_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResendLoadNotification200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling LoadApi->resend_load_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to load/fetch loads for |  |
| **load_token** | **String** | Load token |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**ResendLoadNotification200Response**](ResendLoadNotification200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

