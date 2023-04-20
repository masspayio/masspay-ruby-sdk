# MassPayRubySdk::AttributeApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_attrs**](AttributeApi.md#get_attrs) | **GET** /attribute/{user_token}/{destination_token}/{currency} | Get user attributes for destination_token |
| [**store_attrs**](AttributeApi.md#store_attrs) | **POST** /attribute/{user_token}/{destination_token}/{currency} | Store user attributes |


## get_attrs

> <Array<AttrsRequirement>> get_attrs(currency, user_token, destination_token, opts)

Get user attributes for destination_token

This **GET** endpoint is used to retrieve user attributes for a specific destination token. <br> You can use this endpoint to retrieve user attributes and provide personalized service to your users based on their preferences, demographic data, or other relevant information. <br> To use this endpoint, you need to provide the `user_token`, `destination_token`, and currency as parameters in the URL Path. <br> The endpoint will then return all the required attributes for the provided user for the specified destination token. If any of the attributes already have a stored value, it will be returned as well.

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

api_instance = MassPayRubySdk::AttributeApi.new
currency = 'BRL' # String | The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. 
user_token = 'user_token_example' # String | Token representing the user to retrieve attributes for
destination_token = 'destination_token_example' # String | Token that represents the payout destination i.e. Omnex->Brazil->Bank Deposit->Itau. To be retrieved from the #pricing callback.
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Get user attributes for destination_token
  result = api_instance.get_attrs(currency, user_token, destination_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AttributeApi->get_attrs: #{e}"
end
```

#### Using the get_attrs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AttrsRequirement>>, Integer, Hash)> get_attrs_with_http_info(currency, user_token, destination_token, opts)

```ruby
begin
  # Get user attributes for destination_token
  data, status_code, headers = api_instance.get_attrs_with_http_info(currency, user_token, destination_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AttrsRequirement>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AttributeApi->get_attrs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format.  |  |
| **user_token** | **String** | Token representing the user to retrieve attributes for |  |
| **destination_token** | **String** | Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback. |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**Array&lt;AttrsRequirement&gt;**](AttrsRequirement.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## store_attrs

> store_attrs(currency, user_token, destination_token, attr_txn, opts)

Store user attributes

This **POST** endpoint is used to store user attributes, allowing you to associate additional data with a user token. <br> To use this endpoint, you need to provide the `user_token`, `destination_token`, and currency as parameters in the URL Path. You also need to provide the attribute values as JSON parameters in the Request body. <br> If existing attributes are already stored for the user, this call will override their values.

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

api_instance = MassPayRubySdk::AttributeApi.new
currency = 'BRL' # String | The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. 
user_token = 'user_token_example' # String | Token representing the user to store attributes for
destination_token = 'destination_token_example' # String | Token that represents the payout destination i.e. Omnex->Brazil->Bank Deposit->Itau. To be retrieved from the #pricing callback. 
attr_txn = MassPayRubySdk::AttrTxn.new({values: [MassPayRubySdk::AttrValue.new({token: 'e2ca24e9-c546-4c64-90d2-cb8e70e7c9ba', value: '432532532'})]}) # AttrTxn | Attr parameters to store
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Store user attributes
  api_instance.store_attrs(currency, user_token, destination_token, attr_txn, opts)
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AttributeApi->store_attrs: #{e}"
end
```

#### Using the store_attrs_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> store_attrs_with_http_info(currency, user_token, destination_token, attr_txn, opts)

```ruby
begin
  # Store user attributes
  data, status_code, headers = api_instance.store_attrs_with_http_info(currency, user_token, destination_token, attr_txn, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling AttributeApi->store_attrs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The destination currency sending funds to. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format.  |  |
| **user_token** | **String** | Token representing the user to store attributes for |  |
| **destination_token** | **String** | Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback.  |  |
| **attr_txn** | [**AttrTxn**](AttrTxn.md) | Attr parameters to store |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

nil (empty response body)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

