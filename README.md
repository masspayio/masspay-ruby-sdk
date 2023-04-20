<img src="./docs/logo.png" width="200" />

# masspay_ruby_sdk ![Gem](https://img.shields.io/gem/v/masspay_ruby_sdk) ![Ruby](https://img.shields.io/badge/ruby->=%202.7-blue)

MassPayRubySdk - the Ruby gem for the MassPay API

MassPay API

- API version: 0.1.4
- Package version: 1.0.0

For more information, please visit [https://www.masspay.io](https://www.masspay.io)

## Installation

### Bundler

```shell
bundle add masspay_ruby_sdk
```

### Global Installation

```shell
gem install masspay_ruby_sdk
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

### Ruby

```ruby
# Load the gem
require 'masspay_ruby_sdk'

# Setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = MassPayRubySdk::AccountApi.new

begin
  #Get current available balance
  result = api_instance.get_account_balance
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Exception when calling AccountApi->get_account_balance: #{e}"
end

```

### Rails

Create a file `config/initializers/masspay_ruby_sdk.rb` with the following content:

```ruby

# Setup authorization
MassPayRubySdk.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  config.api_key_prefix['api_key'] = 'Bearer'

  # Configure Bearer authorization: AUTHORIZER_NAME
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end
```

Then call the API:

```ruby
api_instance = MassPayRubySdk::AccountApi.new

begin
  #Get current available balance
  result = api_instance.get_account_balance
  p result
rescue MassPayRubySdk::ApiError => e
  puts "Exception when calling AccountApi->get_account_balance: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.masspay.io/v0.1.4*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MassPayRubySdk::AccountApi* | [**get_account_balance**](docs/AccountApi.md#get_account_balance) | **GET** /account/balance | Get current available balance
*MassPayRubySdk::AccountApi* | [**get_account_statement**](docs/AccountApi.md#get_account_statement) | **GET** /account/statement | Get certified account statement
*MassPayRubySdk::AttributeApi* | [**find_attributes_velocity**](docs/AttributeApi.md#find_attributes_velocity) | **POST** /attribute/{user_token}/velocity | Attributes velocity check
*MassPayRubySdk::AttributeApi* | [**get_attrs**](docs/AttributeApi.md#get_attrs) | **GET** /attribute/{user_token}/{destination_token}/{currency} | Get user attributes for destination_token
*MassPayRubySdk::AttributeApi* | [**store_attrs**](docs/AttributeApi.md#store_attrs) | **POST** /attribute/{user_token}/{destination_token}/{currency} | Store user attributes
*MassPayRubySdk::CardApi* | [**get_wallet_card_info**](docs/CardApi.md#get_wallet_card_info) | **GET** /wallet/{user_token}/{wallet_token}/card | Get MassPay Card Information
*MassPayRubySdk::CardApi* | [**update_wallet_card_info**](docs/CardApi.md#update_wallet_card_info) | **PUT** /wallet/{user_token}/{wallet_token}/card | Update MassPay Card Information
*MassPayRubySdk::CatalogApi* | [**get_cheapest_country_services**](docs/CatalogApi.md#get_cheapest_country_services) | **GET** /country/{country_code}/cheapest | Gets a list of Companies and their cheapest service offerings for the given country code.
*MassPayRubySdk::CatalogApi* | [**get_country_list**](docs/CatalogApi.md#get_country_list) | **GET** /country/list | Gets a list of countries where services offered.
*MassPayRubySdk::CatalogApi* | [**get_country_services**](docs/CatalogApi.md#get_country_services) | **GET** /country/{country_code} | Gets a list of Companies and their service offerings for the given country code.
*MassPayRubySdk::CatalogApi* | [**get_destination_token_alternatives**](docs/CatalogApi.md#get_destination_token_alternatives) | **GET** /service/{destination_token}/alternatives | Returns list of alternative service to a provided service
*MassPayRubySdk::CatalogApi* | [**get_user_agreement**](docs/CatalogApi.md#get_user_agreement) | **GET** /user-agreements | Get User Agreement
*MassPayRubySdk::CatalogApi* | [**get_user_agreements_names**](docs/CatalogApi.md#get_user_agreements_names) | **OPTIONS** /user-agreements | Get Available User Agreements
*MassPayRubySdk::InternalApi* | [**commit_payout_txn_internal**](docs/InternalApi.md#commit_payout_txn_internal) | **PUT** /payout/{user_token}/{payout_token}/internal | Commit payout transaction
*MassPayRubySdk::InternalApi* | [**decrypt_statement_jwt**](docs/InternalApi.md#decrypt_statement_jwt) | **GET** /decrypt-statement-JWT | Decrypt Statement JWT
*MassPayRubySdk::InternalApi* | [**distributors_balances**](docs/InternalApi.md#distributors_balances) | **GET** /distributors/balances | Retrieve available balances at distributors
*MassPayRubySdk::InternalApi* | [**generate_invoice**](docs/InternalApi.md#generate_invoice) | **OPTIONS** /payout/{user_token}/{payout_token} | Generate Invoice
*MassPayRubySdk::InternalApi* | [**generate_pricing_list**](docs/InternalApi.md#generate_pricing_list) | **POST** /generate_pricing_list | Generate pricing list
*MassPayRubySdk::InternalApi* | [**get_callback_company_id**](docs/InternalApi.md#get_callback_company_id) | **GET** /callback/{company_id} | Transaction Status Callback
*MassPayRubySdk::InternalApi* | [**get_development_test**](docs/InternalApi.md#get_development_test) | **GET** /development/test | Development
*MassPayRubySdk::InternalApi* | [**initiate_payout_internal**](docs/InternalApi.md#initiate_payout_internal) | **POST** /payout/{user_token}/internal | Initiate a payout transaction
*MassPayRubySdk::InternalApi* | [**post_account_api_key**](docs/InternalApi.md#post_account_api_key) | **POST** /account/api-key | Generate API Key
*MassPayRubySdk::InternalApi* | [**post_callback_company_id**](docs/InternalApi.md#post_callback_company_id) | **POST** /callback/{company_id} | Transaction Status Callback
*MassPayRubySdk::InternalApi* | [**update_user_internal**](docs/InternalApi.md#update_user_internal) | **PUT** /user/{user_token}/internal | Internal user update
*MassPayRubySdk::InternalApi* | [**upload_batch**](docs/InternalApi.md#upload_batch) | **POST** /batch | Upload a batch
*MassPayRubySdk::KYCApi* | [**find_attributes_velocity**](docs/KYCApi.md#find_attributes_velocity) | **POST** /attribute/{user_token}/velocity | Attributes velocity check
*MassPayRubySdk::KYCApi* | [**get_user_user_token_kyc_au10tix**](docs/KYCApi.md#get_user_user_token_kyc_au10tix) | **GET** /user/{user_token}/kyc/au10tix | Get an Au10tix session link
*MassPayRubySdk::KYCApi* | [**get_user_user_token_kyc_veriiff**](docs/KYCApi.md#get_user_user_token_kyc_veriiff) | **GET** /user/{user_token}/kyc/veriff | Get a Veriff session link
*MassPayRubySdk::LoadApi* | [**cancel_user_load**](docs/LoadApi.md#cancel_user_load) | **DELETE** /load/{user_token} | Reverse a user load
*MassPayRubySdk::LoadApi* | [**create_autopay_rule**](docs/LoadApi.md#create_autopay_rule) | **POST** /wallet/{user_token}/{wallet_token}/autopay | Add autopay rule
*MassPayRubySdk::LoadApi* | [**delete_autopay_rule**](docs/LoadApi.md#delete_autopay_rule) | **DELETE** /wallet/{user_token}/{wallet_token}/autopay | Delete autopay rule
*MassPayRubySdk::LoadApi* | [**get_autopay_rules**](docs/LoadApi.md#get_autopay_rules) | **GET** /wallet/{user_token}/{wallet_token}/autopay | Get all autopay rules
*MassPayRubySdk::LoadApi* | [**get_user_loads_by_token**](docs/LoadApi.md#get_user_loads_by_token) | **GET** /load/{user_token} | Get history of loads by user token
*MassPayRubySdk::LoadApi* | [**load_user**](docs/LoadApi.md#load_user) | **POST** /load/{user_token} | Initiate a load transaction
*MassPayRubySdk::LoadApi* | [**resend_load_notification**](docs/LoadApi.md#resend_load_notification) | **PUT** /load/{user_token} | Resend Load Notification
*MassPayRubySdk::PayoutApi* | [**commit_payout_txn**](docs/PayoutApi.md#commit_payout_txn) | **PUT** /payout/{user_token}/{payout_token} | Commit payout transaction
*MassPayRubySdk::PayoutApi* | [**get_payout_status**](docs/PayoutApi.md#get_payout_status) | **GET** /payout/{user_token}/{payout_token} | Get status of a payout by payout token
*MassPayRubySdk::PayoutApi* | [**get_transaction_confirmation_details**](docs/PayoutApi.md#get_transaction_confirmation_details) | **PATCH** /payout/{user_token}/{payout_token} | Get transaction confirmation details
*MassPayRubySdk::PayoutApi* | [**get_user_payouts_by_token**](docs/PayoutApi.md#get_user_payouts_by_token) | **GET** /payout/{user_token} | Get history of payouts by user token
*MassPayRubySdk::PayoutApi* | [**initiate_payout**](docs/PayoutApi.md#initiate_payout) | **POST** /payout/{user_token} | Initiate a payout transaction
*MassPayRubySdk::SpendBackApi* | [**get_user_spendbacks_by_token**](docs/SpendBackApi.md#get_user_spendbacks_by_token) | **GET** /spendback/{user_token} | Get history of spend backs by user token
*MassPayRubySdk::SpendBackApi* | [**initiate_spendback**](docs/SpendBackApi.md#initiate_spendback) | **POST** /spendback/{user_token} | Initiate a spend back transaction
*MassPayRubySdk::UserApi* | [**create_user**](docs/UserApi.md#create_user) | **POST** /user | Create a user
*MassPayRubySdk::UserApi* | [**get_user_by_token**](docs/UserApi.md#get_user_by_token) | **GET** /user/{user_token} | Get user by user token
*MassPayRubySdk::UserApi* | [**get_user_history**](docs/UserApi.md#get_user_history) | **GET** /user/{user_token}/history | Transactions history
*MassPayRubySdk::UserApi* | [**get_user_user_token_kyc_au10tix**](docs/UserApi.md#get_user_user_token_kyc_au10tix) | **GET** /user/{user_token}/kyc/au10tix | Get an Au10tix session link
*MassPayRubySdk::UserApi* | [**get_user_user_token_kyc_veriiff**](docs/UserApi.md#get_user_user_token_kyc_veriiff) | **GET** /user/{user_token}/kyc/veriff | Get a Veriff session link
*MassPayRubySdk::UserApi* | [**update_user**](docs/UserApi.md#update_user) | **PUT** /user/{user_token} | Updated user
*MassPayRubySdk::UserApi* | [**user_lookup**](docs/UserApi.md#user_lookup) | **GET** /user/lookup | Lookup an existing user
*MassPayRubySdk::WalletApi* | [**create_autopay_rule**](docs/WalletApi.md#create_autopay_rule) | **POST** /wallet/{user_token}/{wallet_token}/autopay | Add autopay rule
*MassPayRubySdk::WalletApi* | [**delete_autopay_rule**](docs/WalletApi.md#delete_autopay_rule) | **DELETE** /wallet/{user_token}/{wallet_token}/autopay | Delete autopay rule
*MassPayRubySdk::WalletApi* | [**get_autopay_rules**](docs/WalletApi.md#get_autopay_rules) | **GET** /wallet/{user_token}/{wallet_token}/autopay | Get all autopay rules
*MassPayRubySdk::WalletApi* | [**get_wallet**](docs/WalletApi.md#get_wallet) | **GET** /wallet/{user_token} | Retrieve all available wallets for a user
*MassPayRubySdk::WalletApi* | [**get_wallet_card_info**](docs/WalletApi.md#get_wallet_card_info) | **GET** /wallet/{user_token}/{wallet_token}/card | Get MassPay Card Information
*MassPayRubySdk::WalletApi* | [**update_wallet_card_info**](docs/WalletApi.md#update_wallet_card_info) | **PUT** /wallet/{user_token}/{wallet_token}/card | Update MassPay Card Information


## Documentation for Models

 - [MassPayRubySdk::ApiResponse](docs/ApiResponse.md)
 - [MassPayRubySdk::AttrTxn](docs/AttrTxn.md)
 - [MassPayRubySdk::AttrValue](docs/AttrValue.md)
 - [MassPayRubySdk::AttrVelocityRequestInner](docs/AttrVelocityRequestInner.md)
 - [MassPayRubySdk::AttrsRequirement](docs/AttrsRequirement.md)
 - [MassPayRubySdk::AutopayResp](docs/AutopayResp.md)
 - [MassPayRubySdk::AutopayRule](docs/AutopayRule.md)
 - [MassPayRubySdk::AvailableBalanceTxnResp](docs/AvailableBalanceTxnResp.md)
 - [MassPayRubySdk::CompaniesResp](docs/CompaniesResp.md)
 - [MassPayRubySdk::Company](docs/Company.md)
 - [MassPayRubySdk::Country](docs/Country.md)
 - [MassPayRubySdk::DistributorsBalances200ResponseInner](docs/DistributorsBalances200ResponseInner.md)
 - [MassPayRubySdk::DistributorsBalances200ResponseInnerBalancesInner](docs/DistributorsBalances200ResponseInnerBalancesInner.md)
 - [MassPayRubySdk::Exception](docs/Exception.md)
 - [MassPayRubySdk::FoundUser](docs/FoundUser.md)
 - [MassPayRubySdk::GenerateInvoice200Response](docs/GenerateInvoice200Response.md)
 - [MassPayRubySdk::GeneratePricingListRequest](docs/GeneratePricingListRequest.md)
 - [MassPayRubySdk::GetAccountStatement200Response](docs/GetAccountStatement200Response.md)
 - [MassPayRubySdk::GetTransactionConfirmationDetails200Response](docs/GetTransactionConfirmationDetails200Response.md)
 - [MassPayRubySdk::GetUserAgreement200Response](docs/GetUserAgreement200Response.md)
 - [MassPayRubySdk::GetUserAgreementsNames200ResponseInner](docs/GetUserAgreementsNames200ResponseInner.md)
 - [MassPayRubySdk::GetUserUserTokenKycAu10tix200Response](docs/GetUserUserTokenKycAu10tix200Response.md)
 - [MassPayRubySdk::GetUserUserTokenKycVeriiff200Response](docs/GetUserUserTokenKycVeriiff200Response.md)
 - [MassPayRubySdk::GetWalletCardInfo200Response](docs/GetWalletCardInfo200Response.md)
 - [MassPayRubySdk::LoadTxn](docs/LoadTxn.md)
 - [MassPayRubySdk::LoadTxnResp](docs/LoadTxnResp.md)
 - [MassPayRubySdk::Loads](docs/Loads.md)
 - [MassPayRubySdk::PayoutTxn](docs/PayoutTxn.md)
 - [MassPayRubySdk::PayoutTxnCommitResp](docs/PayoutTxnCommitResp.md)
 - [MassPayRubySdk::PayoutTxnResp](docs/PayoutTxnResp.md)
 - [MassPayRubySdk::PostAccountApiKey200Response](docs/PostAccountApiKey200Response.md)
 - [MassPayRubySdk::PostAccountApiKeyRequest](docs/PostAccountApiKeyRequest.md)
 - [MassPayRubySdk::ResendLoadNotification200Response](docs/ResendLoadNotification200Response.md)
 - [MassPayRubySdk::Service](docs/Service.md)
 - [MassPayRubySdk::ServicePayersInner](docs/ServicePayersInner.md)
 - [MassPayRubySdk::ServicePayersInnerExchangeRateInner](docs/ServicePayersInnerExchangeRateInner.md)
 - [MassPayRubySdk::SpendBackTxn](docs/SpendBackTxn.md)
 - [MassPayRubySdk::SpendBackTxnResp](docs/SpendBackTxnResp.md)
 - [MassPayRubySdk::SpendBacks](docs/SpendBacks.md)
 - [MassPayRubySdk::StoredUser](docs/StoredUser.md)
 - [MassPayRubySdk::TxnHistoryResp](docs/TxnHistoryResp.md)
 - [MassPayRubySdk::UpdateUser](docs/UpdateUser.md)
 - [MassPayRubySdk::UploadBatchRequest](docs/UploadBatchRequest.md)
 - [MassPayRubySdk::User](docs/User.md)
 - [MassPayRubySdk::WalletTxnResp](docs/WalletTxnResp.md)


## Documentation for Authorization


### api_key


- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header

### AUTHORIZER_NAME

- **Type**: Bearer authentication


## Author

info@masspay.io

