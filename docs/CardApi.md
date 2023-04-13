# MassPayRubySdk::CardApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_wallet_card_info**](CardApi.md#get_wallet_card_info) | **GET** /wallet/{user_token}/{wallet_token}/card | Get MassPay Card Information |
| [**update_wallet_card_info**](CardApi.md#update_wallet_card_info) | **PUT** /wallet/{user_token}/{wallet_token}/card | Update MassPay Card Information |


## get_wallet_card_info

> <GetWalletCardInfo200Response> get_wallet_card_info(user_token, wallet_token)

Get MassPay Card Information

Retrieves MassPay card information that is associated with the provided wallet token

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

api_instance = MassPayRubySdk::CardApi.new
user_token = 'usr_62727c1f-38a3-4a98-b7c9-e84093a106cd' # String | Token representing the user who owns the wallet
wallet_token = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Token representing the wallet

begin
  # Get MassPay Card Information
  result = api_instance.get_wallet_card_info(user_token, wallet_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CardApi->get_wallet_card_info: #{e}"
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
  puts "Error when calling CardApi->get_wallet_card_info_with_http_info: #{e}"
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

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_wallet_card_info

> update_wallet_card_info(user_token, wallet_token, opts)

Update MassPay Card Information

Update card pin number or/and status

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

api_instance = MassPayRubySdk::CardApi.new
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
  puts "Error when calling CardApi->update_wallet_card_info: #{e}"
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
  puts "Error when calling CardApi->update_wallet_card_info_with_http_info: #{e}"
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

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

