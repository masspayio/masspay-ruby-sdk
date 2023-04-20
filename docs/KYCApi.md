# MassPayRubySdk::KYCApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_attributes_velocity**](KYCApi.md#find_attributes_velocity) | **POST** /attribute/{user_token}/velocity | Attributes velocity check |
| [**get_user_user_token_kyc_au10tix**](KYCApi.md#get_user_user_token_kyc_au10tix) | **GET** /user/{user_token}/kyc/au10tix | Get an Au10tix session link |
| [**get_user_user_token_kyc_veriff**](KYCApi.md#get_user_user_token_kyc_veriff) | **GET** /user/{user_token}/kyc/veriff | Get a Veriff session link |
| [**upload_id_photos**](KYCApi.md#upload_id_photos) | **POST** /user/{user_token}/kyc/id | Upload ID Photos |


## find_attributes_velocity

> Array&lt;Object&gt; find_attributes_velocity(user_token, opts)

Attributes velocity check

This **POST** endpoint is used to perform an attributes velocity check to identify users with matching attribute values. <br> You can use this endpoint to help prevent fraudulent activities by monitoring for unusual attribute value changes over time. <br> To use this endpoint, you need to provide the `user_token` as a parameter in the URL path and the required parameters in the request Body. <br> The endpoint will then compare the provided attribute value with the historical attribute values for the same user and determine if it meets the velocity check criteria.

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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_user_token_kyc_au10tix

> <GetUserUserTokenKycAu10tix200Response> get_user_user_token_kyc_au10tix(user_token)

Get an Au10tix session link

This **GET** endpoint is used to obtain a link to an Au10tix session for the user with the provided user token. <br> To use this endpoint, you need to provide the `user_token` as a parameter in the URL Path. <br> The endpoint will then generate a session link that you can use to initiate an identity verification process for the user through the Au10tix platform. <br> The response will contain the session link as a URL in a JSON format.

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

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_user_token_kyc_veriff

> <GetUserUserTokenKycVeriff200Response> get_user_user_token_kyc_veriff(user_token)

Get a Veriff session link

This **GET** endpoint is used to obtain a link to a Veriff session for the user with the provided user token. <br> The endpoint will then generate a session link that you can use to initiate an identity verification process for the user through the Veriff platform. <br> To use this endpoint, you need to provide the `user_token` as a parameter in the URL Path. <br> The response will contain the session link as a URL in a JSON format.

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

api_instance = MassPayRubySdk::KYCApi.new
user_token = 'user_token_example' # String | 

begin
  # Get a Veriff session link
  result = api_instance.get_user_user_token_kyc_veriff(user_token)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->get_user_user_token_kyc_veriff: #{e}"
end
```

#### Using the get_user_user_token_kyc_veriff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserUserTokenKycVeriff200Response>, Integer, Hash)> get_user_user_token_kyc_veriff_with_http_info(user_token)

```ruby
begin
  # Get a Veriff session link
  data, status_code, headers = api_instance.get_user_user_token_kyc_veriff_with_http_info(user_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserUserTokenKycVeriff200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->get_user_user_token_kyc_veriff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** |  |  |

### Return type

[**GetUserUserTokenKycVeriff200Response**](GetUserUserTokenKycVeriff200Response.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upload_id_photos

> Object upload_id_photos(user_token, opts)

Upload ID Photos

Upload IDs for the provided user. This is an optional endpoint if the images are captured through means other than the link that is generated in the attributes.

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

api_instance = MassPayRubySdk::KYCApi.new
user_token = 'user_token_example' # String | 
opts = {
  id_upload: [MassPayRubySdk::IDUpload.new({type: 'face', content: 'content_example'})] # Array<IDUpload> | 
}

begin
  # Upload ID Photos
  result = api_instance.upload_id_photos(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->upload_id_photos: #{e}"
end
```

#### Using the upload_id_photos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> upload_id_photos_with_http_info(user_token, opts)

```ruby
begin
  # Upload ID Photos
  data, status_code, headers = api_instance.upload_id_photos_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling KYCApi->upload_id_photos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** |  |  |
| **id_upload** | [**Array&lt;IDUpload&gt;**](IDUpload.md) |  | [optional] |

### Return type

**Object**

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/json

