# MassPayRubySdk::TaxApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tax_users**](TaxApi.md#get_tax_users) | **GET** /tax | Get List Of Users Annual Balance |


## get_tax_users

> <Array<TaxYearUserResp>> get_tax_users(opts)

Get List Of Users Annual Balance

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

api_instance = MassPayRubySdk::TaxApi.new
opts = {
  amount_threshold: 8.14, # Float | If specified, only show users whose total balance exceeds the provided amount
  tax_year: 56 # Integer | The year for which we would like to obtain tax information for. If none provided, defaults to previous year.
}

begin
  # Get List Of Users Annual Balance
  result = api_instance.get_tax_users(opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling TaxApi->get_tax_users: #{e}"
end
```

#### Using the get_tax_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TaxYearUserResp>>, Integer, Hash)> get_tax_users_with_http_info(opts)

```ruby
begin
  # Get List Of Users Annual Balance
  data, status_code, headers = api_instance.get_tax_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TaxYearUserResp>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling TaxApi->get_tax_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_threshold** | **Float** | If specified, only show users whose total balance exceeds the provided amount | [optional] |
| **tax_year** | **Integer** | The year for which we would like to obtain tax information for. If none provided, defaults to previous year. | [optional] |

### Return type

[**Array&lt;TaxYearUserResp&gt;**](TaxYearUserResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

