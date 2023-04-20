# MassPayRubySdk::UserApi

All URIs are relative to *https://api.masspay.io/v0.1.4*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UserApi.md#create_user) | **POST** /user | Create a user |
| [**get_user_by_token**](UserApi.md#get_user_by_token) | **GET** /user/{user_token} | Get user by user token |
| [**get_user_history**](UserApi.md#get_user_history) | **GET** /user/{user_token}/history | Transactions history |
| [**update_user**](UserApi.md#update_user) | **PUT** /user/{user_token} | Updated user |
| [**user_lookup**](UserApi.md#user_lookup) | **GET** /user/lookup | Lookup an existing user |


## create_user

> <StoredUser> create_user(user)

Create a user

This **POST** endpoint is used to create a new user in MassPay. <br> You can use this endpoint to create a new user with the specified user details in JSON format in the request Body. <br> To use this endpoint, you need to provide the `internal_user_id`, `country`, `first_name`, `last_name`, and `email` as required parameters in the Request Body. <br> The response will include details about the newly created user.

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

api_instance = MassPayRubySdk::UserApi.new
user = MassPayRubySdk::User.new({internal_user_id: '4324-rOzk', country: 'USA', first_name: 'John', last_name: 'Doe', email: 'jdoe@gmail.com'}) # User | Created user object

begin
  # Create a user
  result = api_instance.create_user(user)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoredUser>, Integer, Hash)> create_user_with_http_info(user)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.create_user_with_http_info(user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoredUser>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**User**](User.md) | Created user object |  |

### Return type

[**StoredUser**](StoredUser.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_user_by_token

> <StoredUser> get_user_by_token(user_token, opts)

Get user by user token

This **GET** endpoint is used to retrieve a user's profile by their user token in MassPay. <br> You can use this endpoint to obtain a user profile for a specified user token. <br> To use this endpoint, you need to provide the `user_token` as a required parameter in the URL Path. <br> The response will include all available details for the user.

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

api_instance = MassPayRubySdk::UserApi.new
user_token = 'user_token_example' # String | The user token that needs to be fetched.
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Get user by user token
  result = api_instance.get_user_by_token(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->get_user_by_token: #{e}"
end
```

#### Using the get_user_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoredUser>, Integer, Hash)> get_user_by_token_with_http_info(user_token, opts)

```ruby
begin
  # Get user by user token
  data, status_code, headers = api_instance.get_user_by_token_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoredUser>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->get_user_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | The user token that needs to be fetched. |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**StoredUser**](StoredUser.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_history

> <Array<TxnHistoryResp>> get_user_history(user_token, opts)

Transactions history

This **GET** endpoint is used to retrieve a list of all transactions, including payouts, loads, and spendbacks, for a provider user with the provided user token. <br> You can use this endpoint to obtain a comprehensive history of transactions for the provider user, allowing you to track and analyze their payment activities over time. <br> To use this endpoint, you need to provide the `user_token` as a parameter in the URL Path. <br> The response will contain a JSON array of transaction objects, each including transactions details.

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

api_instance = MassPayRubySdk::UserApi.new
user_token = 'usr_f4741aa2-9f39-4358-8247-2409e3fc2715' # String | Token representing the user to get transactions history for
opts = {
  idempotency_key: 'idempotency_key_example', # String | Unique key to prevent duplicate processing
  number_of_records: 8.14, # Float | Number of records to return
  start_date: Date.parse('Tue Mar 31 02:00:00 CEST 2020'), # Date | Starting date
  end_date: Date.parse('Tue Mar 31 02:00:00 CEST 2020'), # Date | Ending date
  page: 56, # Integer | Page number
  type: 'payout', # String | Filter particular types of transactions. Comma separated to include multiple types
  wallet_token: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Filter transactions to include only provided wallet token.
  show_all_clients: true # Boolean | Wether to show transactions from all clients
}

begin
  # Transactions history
  result = api_instance.get_user_history(user_token, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->get_user_history: #{e}"
end
```

#### Using the get_user_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TxnHistoryResp>>, Integer, Hash)> get_user_history_with_http_info(user_token, opts)

```ruby
begin
  # Transactions history
  data, status_code, headers = api_instance.get_user_history_with_http_info(user_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TxnHistoryResp>>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->get_user_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user to get transactions history for |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |
| **number_of_records** | **Float** | Number of records to return | [optional][default to 10] |
| **start_date** | **Date** | Starting date | [optional] |
| **end_date** | **Date** | Ending date | [optional] |
| **page** | **Integer** | Page number | [optional][default to 1] |
| **type** | **String** | Filter particular types of transactions. Comma separated to include multiple types | [optional] |
| **wallet_token** | **String** | Filter transactions to include only provided wallet token. | [optional] |
| **show_all_clients** | **Boolean** | Wether to show transactions from all clients | [optional][default to false] |

### Return type

[**Array&lt;TxnHistoryResp&gt;**](TxnHistoryResp.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user

> <StoredUser> update_user(user_token, update_user, opts)

Updated user

This **PUT** endpoint is used to update the profile information of a user with the provided user token. <br> You need to provide the `user_token` in the URL path to identify the user whose information you want to update. The updated information should be provided in the request Body as a JSON object. This endpoint can be used to update various profile information, such as the user's name, email address, phone number, and more. <br> The response will contain the updated user information in a JSON format.

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

api_instance = MassPayRubySdk::UserApi.new
user_token = 'user_token_example' # String | user token that need to be updated
update_user = MassPayRubySdk::UpdateUser.new({status: 'ACTIVE', internal_user_id: '4324-rOzk', address1: '2000 main st', city: 'Santa Monica', state_province: 'CA', postal_code: '90405', country: 'USA', first_name: 'John', last_name: 'Doe', email: 'jdoe@gmail.com'}) # UpdateUser | Updated user object
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Updated user
  result = api_instance.update_user(user_token, update_user, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StoredUser>, Integer, Hash)> update_user_with_http_info(user_token, update_user, opts)

```ruby
begin
  # Updated user
  data, status_code, headers = api_instance.update_user_with_http_info(user_token, update_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StoredUser>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | user token that need to be updated |  |
| **update_user** | [**UpdateUser**](UpdateUser.md) | Updated user object |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**StoredUser**](StoredUser.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## user_lookup

> <FoundUser> user_lookup(email, first_name, internal_user_id, opts)

Lookup an existing user

This **GET** endpoint is used to lookup whether a user with the provided email and first name exists in the MassPay system. <br> To use this endpoint, you need to provide the `email`, `first_name`, and `internal_user_id` as Query parameters in the URL. <br> The endpoint will then search for the user based on the provided information and return a JSON response indicating whether the user exists or not. If the user exists, the response will also contain the user's details, `user_token`, `first_name`, `last_name` and `internal_user_id`.

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

api_instance = MassPayRubySdk::UserApi.new
email = 'email_example' # String | User's email address. Required if First Name is provided
first_name = 'first_name_example' # String | User's first name. Required if email is provided
internal_user_id = 'internal_user_id_example' # String | A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ |. Required if email and first name are not provided
opts = {
  idempotency_key: 'idempotency_key_example' # String | Unique key to prevent duplicate processing
}

begin
  # Lookup an existing user
  result = api_instance.user_lookup(email, first_name, internal_user_id, opts)
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->user_lookup: #{e}"
end
```

#### Using the user_lookup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FoundUser>, Integer, Hash)> user_lookup_with_http_info(email, first_name, internal_user_id, opts)

```ruby
begin
  # Lookup an existing user
  data, status_code, headers = api_instance.user_lookup_with_http_info(email, first_name, internal_user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FoundUser>
rescue MassPayRubySdk::ApiError => e
  puts "Error when calling UserApi->user_lookup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | User&#39;s email address. Required if First Name is provided |  |
| **first_name** | **String** | User&#39;s first name. Required if email is provided |  |
| **internal_user_id** | **String** | A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ |. Required if email and first name are not provided |  |
| **idempotency_key** | **String** | Unique key to prevent duplicate processing | [optional] |

### Return type

[**FoundUser**](FoundUser.md)

### Authorization

[AUTHORIZER_NAME](../README.md#AUTHORIZER_NAME)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

