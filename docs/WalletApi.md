# MassPayRubySdk::WalletApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_autopay_rule**](WalletApi.md#create_autopay_rule) | **POST** /wallet/{user_token}/{wallet_token}/autopay | Add autopay rule |
| [**delete_autopay_rule**](WalletApi.md#delete_autopay_rule) | **DELETE** /wallet/{user_token}/{wallet_token}/autopay | Delete autopay rule |
| [**get_autopay_rules**](WalletApi.md#get_autopay_rules) | **GET** /wallet/{user_token}/{wallet_token}/autopay | Get all autopay rules |
| [**get_wallet**](WalletApi.md#get_wallet) | **GET** /wallet/{user_token} | Retrieve all available wallets for a user |
| [**get_wallet_card_info**](WalletApi.md#get_wallet_card_info) | **GET** /wallet/{user_token}/{wallet_token}/card | Get MassPay Card Information |
| [**update_wallet_card_info**](WalletApi.md#update_wallet_card_info) | **PUT** /wallet/{user_token}/{wallet_token}/card | Update MassPay Card Information |


## create_autopay_rule

> <AutopayResp> create_autopay_rule(user_token, wallet_token, opts)

Add autopay rule

This **POST** endpoint is used to add an autopay rule that will initiate a payout whenever the provided wallet token is loaded. <br> You can use this endpoint to create an autopay rule that automatically sends a percentage of incoming load to a specific destination. <br> To use this endpoint, you need to provide the `user_token` and `wallet_token` as required parameters in the URL Path, and the `destination_token` and percentage of incoming load that should be autopaid to the `destination_token` in the request Body. <br> The response will include a JSON object containing the details of the created autopay rule, including the token, `destination_token` and percentage.

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

api_instance = MassPayRubySdk::WalletApi.new
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
  puts "Error when calling WalletApi->create_autopay_rule: #{e}"
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
  puts "Error when calling WalletApi->create_autopay_rule_with_http_info: #{e}"
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_autopay_rule

> delete_autopay_rule(user_token, wallet_token, token)

Delete autopay rule

This **DELETE** endpoint is used to delete an existing autopay rule. <br> You can use this endpoint to remove an autopay rule that is no longer needed. <br> To use this endpoint, you need to provide the `user_token` and `wallet_token` as required parameters in the URL Path, and the token of the autopay rule you wish to delete in the request Body. <br> The response will include a message indicating the success of the deletion.

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

api_instance = MassPayRubySdk::WalletApi.new
user_token = 'user_token_example' # String | Token representing the user who owns the wallet
wallet_token = 'wallet_token_example' # String | Token representing the wallet
token = 'autopay_3684cc43-fe3b-4994-8ca1-7dc0db94430f' # String | Autopay token to delete

begin
  # Delete autopay rule
  api_instance.delete_autopay_rule(user_token, wallet_token, token)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->delete_autopay_rule: #{e}"
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
  puts "Error when calling WalletApi->delete_autopay_rule_with_http_info: #{e}"
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_autopay_rules

> <Array<AutopayResp>> get_autopay_rules(user_token, wallet_token)

Get all autopay rules

This **GET** endpoint is used to retrieve all autopay rules currently applied to the provided wallet token. <br> You can use this endpoint to obtain information about the autopay rules associated with the wallet. <br> To use this endpoint, you need to provide the `user_token` and `wallet_token` as required parameters in the URL Path. <br> The response will include a JSON array containing details for each autopay rule, including the token, `destination_token` and percentage.

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

api_instance = MassPayRubySdk::WalletApi.new
user_token = 'user_token_example' # String | Token representing the user who owns the wallet
wallet_token = 'wallet_token_example' # String | Token representing the wallet

begin
  # Get all autopay rules
  result = api_instance.get_autopay_rules(user_token, wallet_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->get_autopay_rules: #{e}"
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
  puts "Error when calling WalletApi->get_autopay_rules_with_http_info: #{e}"
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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wallet

> <Array<WalletTxnResp>> get_wallet(user_token, opts)

Retrieve all available wallets for a user

This **GET** endpoint is used to retrieve all available wallets for a provided user token. <br> You can use this endpoint to obtain information about the wallets associated with the provided user token. <br> To use this endpoint, you need to provide the `user_token` as a required parameter in the URL Path. <br> The response will include a JSON array containing details for each wallet including `user_token`, `balance`, `currency_code`.

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

api_instance = MassPayRubySdk::WalletApi.new
user_token = 'user_token_example' # String | Token representing the user who owns the wallet
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Retrieve all available wallets for a user
  result = api_instance.get_wallet(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->get_wallet: #{e}"
end
```

#### Using the get_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WalletTxnResp>>, Integer, Hash)> get_wallet_with_http_info(user_token, opts)

```ruby
begin
  # Retrieve all available wallets for a user
  data, status_code, headers = api_instance.get_wallet_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WalletTxnResp>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->get_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user who owns the wallet |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**Array&lt;WalletTxnResp&gt;**](WalletTxnResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wallet_card_info

> <GetWalletCardInfo200Response> get_wallet_card_info(user_token, wallet_token)

Get MassPay Card Information

This **GET** endpoint is used to retrieve MassPay card information associated with the provided wallet token. <br> You can use this endpoint to obtain information about the MassPay card associated with the wallet. <br> To use this endpoint, you need to provide the `user_token` and `wallet_token` as required parameters in the URL Path. <br> The response will include a JSON object containing details for the MassPay card, including the card number, balance, status.

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

api_instance = MassPayRubySdk::WalletApi.new
user_token = 'usr_62727c1f-38a3-4a98-b7c9-e84093a106cd' # String | Token representing the user who owns the wallet
wallet_token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Token representing the wallet

begin
  # Get MassPay Card Information
  result = api_instance.get_wallet_card_info(user_token, wallet_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->get_wallet_card_info: #{e}"
end
```

#### Using the get_wallet_card_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWalletCardInfo200Response>, Integer, Hash)> get_wallet_card_info_with_http_info(user_token, wallet_token)

```ruby
begin
  # Get MassPay Card Information
  data, status_code, headers = api_instance.get_wallet_card_info_with_http_info(user_token, wallet_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWalletCardInfo200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->get_wallet_card_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user who owns the wallet |  |
| **wallet_token** | **String** | Token representing the wallet |  |

### Return type

[**GetWalletCardInfo200Response**](GetWalletCardInfo200Response.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wallet_card_info

> update_wallet_card_info(user_token, wallet_token, opts)

Update MassPay Card Information

This **PUT** endpoint is used to update the MassPay card information for a provided user token and wallet token. <br> You can use this endpoint to help your users manage their MassPay card information, including updating their card PIN number or status. <br> To use this endpoint, you need to provide the `user_token` and `wallet_token` as parameters in the URL Path, along with the parameters in the request Query, including the card pin number or(and) status. <br> The endpoint will then update the card information for the provided user and wallet token.

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

api_instance = MassPayRubySdk::WalletApi.new
user_token = 'usr_62727c1f-38a3-4a98-b7c9-e84093a106cd' # String | Token representing the user who owns the wallet
wallet_token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Token representing the wallet
opts = {
  pin: '0123', # String | New 4 digit pin number for the card (To be used in ATM machines)
  status: 'SUSPEND' # String | New status for the card
}

begin
  # Update MassPay Card Information
  api_instance.update_wallet_card_info(user_token, wallet_token, opts)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->update_wallet_card_info: #{e}"
end
```

#### Using the update_wallet_card_info_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_wallet_card_info_with_http_info(user_token, wallet_token, opts)

```ruby
begin
  # Update MassPay Card Information
  data, status_code, headers = api_instance.update_wallet_card_info_with_http_info(user_token, wallet_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling WalletApi->update_wallet_card_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user who owns the wallet |  |
| **wallet_token** | **String** | Token representing the wallet |  |
| **pin** | **String** | New 4 digit pin number for the card (To be used in ATM machines) | [optional] |
| **status** | **String** | New status for the card | [optional] |

### Return type

nil (empty response body)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

