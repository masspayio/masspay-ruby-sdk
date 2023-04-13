# MassPayRubySdk::KYCApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_attributes_velocity**](KYCApi.md#find_attributes_velocity) | **POST** /attribute/{user_token}/velocity | Attributes velocity check |
| [**get_user_user_token_kyc_au10tix**](KYCApi.md#get_user_user_token_kyc_au10tix) | **GET** /user/{user_token}/kyc/au10tix | Get an Au10tix session link |
| [**get_user_user_token_kyc_veriiff**](KYCApi.md#get_user_user_token_kyc_veriiff) | **GET** /user/{user_token}/kyc/veriff | Get a Veriff session link |


## find_attributes_velocity

> Array&lt;Object&gt; find_attributes_velocity(user_token, opts)

Attributes velocity check

Identify users with matching attribute values

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

api_instance = MassPayRubySdk::KYCApi.new
user_token = 'user_token_example' # String | Token representing the user to retrieve attributes for
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  attr_velocity_request_inner: [MassPayRubySdk::AttrVelocityRequestInner.new({type: 'CardNumber', value: 'value_example'})] # Array<AttrVelocityRequestInner> | 
}

begin
  # Attributes velocity check
  result = api_instance.find_attributes_velocity(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->find_attributes_velocity: #{e}"
end
```

#### Using the find_attributes_velocity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;Object&gt;, Integer, Hash)> find_attributes_velocity_with_http_info(user_token, opts)

```ruby
begin
  # Attributes velocity check
  data, status_code, headers = api_instance.find_attributes_velocity_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;Object&gt;
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->find_attributes_velocity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to retrieve attributes for |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **attr_velocity_request_inner** | [**Array&lt;AttrVelocityRequestInner&gt;**](AttrVelocityRequestInner.md) |  | [optional] |

### Return type

**Array&lt;Object&gt;**

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_user_token_kyc_au10tix

> <GetUserUserTokenKycAu10tix200Response> get_user_user_token_kyc_au10tix(user_token)

Get an Au10tix session link

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

api_instance = MassPayRubySdk::KYCApi.new
user_token = 'user_token_example' # String | 

begin
  # Get an Au10tix session link
  result = api_instance.get_user_user_token_kyc_au10tix(user_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->get_user_user_token_kyc_au10tix: #{e}"
end
```

#### Using the get_user_user_token_kyc_au10tix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserUserTokenKycAu10tix200Response>, Integer, Hash)> get_user_user_token_kyc_au10tix_with_http_info(user_token)

```ruby
begin
  # Get an Au10tix session link
  data, status_code, headers = api_instance.get_user_user_token_kyc_au10tix_with_http_info(user_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserUserTokenKycAu10tix200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->get_user_user_token_kyc_au10tix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** |  |  |

### Return type

[**GetUserUserTokenKycAu10tix200Response**](GetUserUserTokenKycAu10tix200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_user_token_kyc_veriiff

> <GetUserUserTokenKycVeriiff200Response> get_user_user_token_kyc_veriiff(user_token)

Get a Veriff session link

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

api_instance = MassPayRubySdk::KYCApi.new
user_token = 'user_token_example' # String | 

begin
  # Get a Veriff session link
  result = api_instance.get_user_user_token_kyc_veriiff(user_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->get_user_user_token_kyc_veriiff: #{e}"
end
```

#### Using the get_user_user_token_kyc_veriiff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserUserTokenKycVeriiff200Response>, Integer, Hash)> get_user_user_token_kyc_veriiff_with_http_info(user_token)

```ruby
begin
  # Get a Veriff session link
  data, status_code, headers = api_instance.get_user_user_token_kyc_veriiff_with_http_info(user_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserUserTokenKycVeriiff200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->get_user_user_token_kyc_veriiff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** |  |  |

### Return type

[**GetUserUserTokenKycVeriiff200Response**](GetUserUserTokenKycVeriiff200Response.md)

### Authorization

[api_key](../README.md#api_key), [AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

