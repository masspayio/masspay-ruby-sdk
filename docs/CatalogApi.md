# MassPayRubySdk::CatalogApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_cheapest_country_services**](CatalogApi.md#get_cheapest_country_services) | **GET** /country/{country_code}/cheapest | Gets a list of Companies and their cheapest service offerings for the given country code. |
| [**get_country_list**](CatalogApi.md#get_country_list) | **GET** /country/list | Gets a list of countries where services offered. |
| [**get_country_services**](CatalogApi.md#get_country_services) | **GET** /country/{country_code} | Gets a list of Companies and their service offerings for the given country code. |
| [**get_destination_token_alternatives**](CatalogApi.md#get_destination_token_alternatives) | **GET** /service/{destination_token}/alternatives | Returns list of alternative service to a provided service |
| [**get_user_agreement**](CatalogApi.md#get_user_agreement) | **GET** /user-agreements | Get User Agreement |
| [**get_user_agreements_names**](CatalogApi.md#get_user_agreements_names) | **OPTIONS** /user-agreements | Get Available User Agreements |


## get_cheapest_country_services

> <CompaniesResp> get_cheapest_country_services(country_code, opts)

Gets a list of Companies and their cheapest service offerings for the given country code.

This **GET** endpoint is used to retrieve a list of companies and their cheapest service offerings for a specific country. <br> You can use this endpoint to obtain information about available services and pricing for each respected company in the provided country. If two providers offer similar services, only the cheapest option will be displayed. <br> To use this endpoint, you need to provide the `country_code` as a required parameter in the URL Path. <br> The response will include a JSON array containing details for each company, including the company name, cheapest service offerings, and pricing.

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

api_instance = MassPayRubySdk::CatalogApi.new
country_code = 'country_code_example' # String | Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\"
opts = {
  amount: 'amount_example', # String | Returns the results fee based on the given amount, defaults to $200
  limit: 3.4, # Float | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  wallet_token: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Token representing the wallet used. If provided, the results would be custom-tailored to this user.
  include_payer_logos: true, # Boolean | Whether to include the payers logo in base64 format. 
  user_token: 'user_token_example', # String | Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided
  source_currency: 'source_currency_example' # String | Required if amount is provided. The currency associated with the amount
}

begin
  # Gets a list of Companies and their cheapest service offerings for the given country code.
  result = api_instance.get_cheapest_country_services(country_code, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_cheapest_country_services: #{e}"
end
```

#### Using the get_cheapest_country_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesResp>, Integer, Hash)> get_cheapest_country_services_with_http_info(country_code, opts)

```ruby
begin
  # Gets a list of Companies and their cheapest service offerings for the given country code.
  data, status_code, headers = api_instance.get_cheapest_country_services_with_http_info(country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_cheapest_country_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\&quot; |  |
| **amount** | **String** | Returns the results fee based on the given amount, defaults to $200 | [optional][default to &#39;200&#39;] |
| **limit** | **Float** | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent | [optional] |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **wallet_token** | **String** | Token representing the wallet used. If provided, the results would be custom-tailored to this user. | [optional] |
| **include_payer_logos** | **Boolean** | Whether to include the payers logo in base64 format.  | [optional][default to false] |
| **user_token** | **String** | Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided | [optional] |
| **source_currency** | **String** | Required if amount is provided. The currency associated with the amount | [optional] |

### Return type

[**CompaniesResp**](CompaniesResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_country_list

> <Array<Country>> get_country_list

Gets a list of countries where services offered.

This **GET** endpoint is used to retrieve a list of all currently available countries of service. <br> You can use this endpoint to obtain a list of countries where MassPay services are offered. <br> There are no required parameters for this endpoint. <br> The response will include a JSON array containing details for each country, including the country code, name, and `three_letter_code`.

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

api_instance = MassPayRubySdk::CatalogApi.new

begin
  # Gets a list of countries where services offered.
  result = api_instance.get_country_list
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_country_list: #{e}"
end
```

#### Using the get_country_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Country>>, Integer, Hash)> get_country_list_with_http_info

```ruby
begin
  # Gets a list of countries where services offered.
  data, status_code, headers = api_instance.get_country_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Country>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_country_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Country&gt;**](Country.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_country_services

> <CompaniesResp> get_country_services(country_code, opts)

Gets a list of Companies and their service offerings for the given country code.

This **GET** endpoint is used to retrieve a list of companies and their service offerings for a specific country. <br> You can use this endpoint to obtain information about available services and pricing for each respected company in the provided country. <br> To use this endpoint, you need to provide the `country_code` in the URL Path. <br> The response will include a JSON array containing details for each company, including the company name, service offerings, and pricing.

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

api_instance = MassPayRubySdk::CatalogApi.new
country_code = 'country_code_example' # String | Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\"
opts = {
  amount: 'amount_example', # String | Returns the results fee based on the given amount, defaults to $200
  limit: 3.4, # Float | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  wallet_token: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Token representing the wallet used. If provided, the results would be custom-tailored to this user. Not necessary if user_token is provided
  include_payer_logos: true, # Boolean | Whether to include the payers logo in base64 format. 
  user_token: 'user_token_example', # String | Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided
  source_currency: 'source_currency_example' # String | Required if amount is provided. The currency associated with the amount
}

begin
  # Gets a list of Companies and their service offerings for the given country code.
  result = api_instance.get_country_services(country_code, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_country_services: #{e}"
end
```

#### Using the get_country_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompaniesResp>, Integer, Hash)> get_country_services_with_http_info(country_code, opts)

```ruby
begin
  # Gets a list of Companies and their service offerings for the given country code.
  data, status_code, headers = api_instance.get_country_services_with_http_info(country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompaniesResp>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_country_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Country code searching services for. 3 letters [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code\&quot; |  |
| **amount** | **String** | Returns the results fee based on the given amount, defaults to $200 | [optional][default to &#39;200&#39;] |
| **limit** | **Float** | Limit amount for transaction amount + fee. If fee + amount are higher than the limit, the output will automatically adjust to maximize the possible amount sent | [optional] |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **wallet_token** | **String** | Token representing the wallet used. If provided, the results would be custom-tailored to this user. Not necessary if user_token is provided | [optional] |
| **include_payer_logos** | **Boolean** | Whether to include the payers logo in base64 format.  | [optional][default to false] |
| **user_token** | **String** | Token representing the user for which we fetch the catalog. If provided, the results would be custom-tailored to this user. Not necessary if wallet_token is provided | [optional] |
| **source_currency** | **String** | Required if amount is provided. The currency associated with the amount | [optional] |

### Return type

[**CompaniesResp**](CompaniesResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_destination_token_alternatives

> <Service> get_destination_token_alternatives(destination_token, opts)

Returns list of alternative service to a provided service

This **GET** endpoint is used to retrieve a list of alternative services to a provided service. <br> You can use this endpoint to obtain information about other available services and pricing offered by different companies for a particular destination. <br> To use this endpoint, you need to provide the `destination_token` as a required parameter in the URL Path. <br> The response will include a JSON array containing details for each company, including the company name, available alternative services, and pricing.

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

api_instance = MassPayRubySdk::CatalogApi.new
destination_token = 'destination_token_example' # String | Destination token
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Returns list of alternative service to a provided service
  result = api_instance.get_destination_token_alternatives(destination_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_destination_token_alternatives: #{e}"
end
```

#### Using the get_destination_token_alternatives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Service>, Integer, Hash)> get_destination_token_alternatives_with_http_info(destination_token, opts)

```ruby
begin
  # Returns list of alternative service to a provided service
  data, status_code, headers = api_instance.get_destination_token_alternatives_with_http_info(destination_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Service>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_destination_token_alternatives_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_token** | **String** | Destination token |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**Service**](Service.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_agreement

> <GetUserAgreement200Response> get_user_agreement(id)

Get User Agreement

This **GET** endpoint is used to retrieve the user agreement for payout services. <br> You can use this endpoint to obtain information about the available user agreements for payout services offered by MassPay. <br> To use this endpoint, you need to provide the `ID` representing the user agreement as a required parameter in the URL Path. <br> The response will include the user agreement details.

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

api_instance = MassPayRubySdk::CatalogApi.new
id = 2 # Integer | Id representing user agreement (retrieved from OPTIONS call)

begin
  # Get User Agreement
  result = api_instance.get_user_agreement(id)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_user_agreement: #{e}"
end
```

#### Using the get_user_agreement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserAgreement200Response>, Integer, Hash)> get_user_agreement_with_http_info(id)

```ruby
begin
  # Get User Agreement
  data, status_code, headers = api_instance.get_user_agreement_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserAgreement200Response>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_user_agreement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id representing user agreement (retrieved from OPTIONS call) |  |

### Return type

[**GetUserAgreement200Response**](GetUserAgreement200Response.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_agreements_names

> <Array<GetUserAgreementsNames200ResponseInner>> get_user_agreements_names

Get Available User Agreements

This OPTIONS endpoint is used to retrieve a list of available user agreements for payout services offered by MassPay without the content. <br> You can use this endpoint to obtain the names of available user agreements. <br> There are no required parameters needed to use this endpoint. <br> The response will include a list of user agreement names

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

api_instance = MassPayRubySdk::CatalogApi.new

begin
  # Get Available User Agreements
  result = api_instance.get_user_agreements_names
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_user_agreements_names: #{e}"
end
```

#### Using the get_user_agreements_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUserAgreementsNames200ResponseInner>>, Integer, Hash)> get_user_agreements_names_with_http_info

```ruby
begin
  # Get Available User Agreements
  data, status_code, headers = api_instance.get_user_agreements_names_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUserAgreementsNames200ResponseInner>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling CatalogApi->get_user_agreements_names_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GetUserAgreementsNames200ResponseInner&gt;**](GetUserAgreementsNames200ResponseInner.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

