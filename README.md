<div align='center' class='text-center'>
  <img alt='' src='./assets/logo.webp' width='200' />
  <h1 align='center' class='text-center'>masspay_ruby_sdk</h1>
</div>

<div align='center' class='text-center'>
  <a aria-label='Version' href='#'>
    <img alt='' src='https://img.shields.io/badge/version-2.0.0-blue' />
  </a>
  <a aria-label='License' href='https://opensource.org/licenses/MIT'>
    <img alt='' src='https://img.shields.io/badge/License-MIT-blue.svg' />
  </a>
</div>

<!---
Repository badges to consider: (https://github.com/aleen42/badges)
  a. [![Build Status](https://travis-ci.com/username/repository.svg?branch=master)](https://travis-ci.com/)
  b. [![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
  c. [![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)]()
  d. [![Downloads](https://img.shields.io/badge/downloads-1000%2Fmonth-brightgreen.svg)]()
  e. [![Contributors](https://img.shields.io/github/contributors/username/repository.svg)]()
--->

Welcome to our masspay_ruby_sdk. We are committed to providing you with the best SDK services experience possible. Please use our step-by-step instructions to become familiar with how to use our SDK.

- Current API version: 1.0.0
- Current package version: 2.0.0

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Features](#features)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Frequently Asked Questions (FAQ)](#frequently-asked-questions-faq)

## Requirements

<!--- Instructions on what the user must do before using the SDK. --->

- Ruby version >= 2.7.
- MassPay.io API credentials.

## Installation

<!--- Instructions on how to install and set up the SDK.--->

Use this command to install masspay_ruby_sdk in your terminal.

```bash
gem install masspay_ruby_sdk
```

## Usage

<!--- Description how users can use the SDK.--->

In case that you successfully installed our masspay_ruby_sdk please execute this code:

```ruby
require 'masspay_ruby_sdk'

client = MasspayRubySdk.client({ bearer_auth: 'YOUR_BEARER_TOKEN' })
client.account_service.get_account_balance
```

## Features

<!--- Highlighting the key features and capabilities of the SDK. --->

Kindly note that every URI is relative to _https://api.masspay.io/v1.0.0_.

The table displays all features categorized based on their specific purposes.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | ------------- 
_MasspayRubySdk.account_service_ | **get_account_balance** | **GET** /payout/account/balance | Get current available balance
_MasspayRubySdk.account_service_ | **get_account_statement** | **GET** /payout/account/statement | Get certified account statement
_MasspayRubySdk.attribute_service_ | **get_all_attrs** | **GET** /payout/attribute/{user_token} | Get all stored user attributes
_MasspayRubySdk.attribute_service_ | **store_attrs** | **POST** /payout/attribute/{user_token}/{destination_token}/{currency} | Store user attributes
_MasspayRubySdk.attribute_service_ | **get_attrs** | **GET** /payout/attribute/{user_token}/{destination_token}/{currency} | Get user attributes for destination_token
_MasspayRubySdk.card_service_ | **get_wallet_card_info** | **GET** /payout/wallet/{user_token}/{wallet_token}/card | Get MassPay card information
_MasspayRubySdk.card_service_ | **update_wallet_card_info** | **PUT** /payout/wallet/{user_token}/{wallet_token}/card | Update MassPay card information
_MasspayRubySdk.catalog_service_ | **get_country_list** | **GET** /payout/country/list | Gets a list of countries where services offered.
_MasspayRubySdk.catalog_service_ | **get_country_services** | **GET** /payout/country/{country_code} | Gets a list of Companies and their service offerings for the given country code.
_MasspayRubySdk.catalog_service_ | **get_cheapest_country_services** | **GET** /payout/country/{country_code}/cheapest | Gets a list of Companies and their cheapest service offerings for the given country code.
_MasspayRubySdk.catalog_service_ | **get_destination_token_alternatives** | **GET** /payout/service/{destination_token}/alternatives | Returns list of alternative service to a provided service
_MasspayRubySdk.catalog_service_ | **get_destination_token** | **GET** /payout/service/{destination_token} | Returns provided service
_MasspayRubySdk.catalog_service_ | **get_user_agreement** | **GET** /payout/user-agreements | Get user agreement
_MasspayRubySdk.catalog_service_ | **get_user_agreements_names** | **OPTIONS** /payout/user-agreements | Get available user agreements
_MasspayRubySdk.kyc_service_ | **find_attributes_velocity** | **POST** /payout/attribute/{user_token}/velocity | Attributes velocity check
_MasspayRubySdk.kyc_service_ | **get_user_user_token_kyc_au_10_tix** | **GET** /payout/user/{user_token}/kyc/au10tix | Get an Au10tix session link
_MasspayRubySdk.kyc_service_ | **upload_id_photos** | **POST** /payout/user/{user_token}/kyc/id | Upload ID photos
_MasspayRubySdk.kyc_service_ | **get_user_user_token_kyc_attempts** | **GET** /payout/user/{user_token}/kyc/id | Get all KYC sessions
_MasspayRubySdk.kyc_service_ | **get_user_user_token_kyc_veriff** | **GET** /payout/user/{user_token}/kyc/veriff | Get a Veriff session link
_MasspayRubySdk.load_service_ | **resend_balance_notification** | **PUT** /payout/wallet/{user_token} | Resend balance notification
_MasspayRubySdk.load_service_ | **load_user** | **POST** /payout/load/{user_token} | Initiate a load transaction
_MasspayRubySdk.load_service_ | **get_user_loads_by_token** | **GET** /payout/load/{user_token} | Get history of loads by user token
_MasspayRubySdk.load_service_ | **resend_load_notification** | **PUT** /payout/load/{user_token} | Resend load notification
_MasspayRubySdk.load_service_ | **cancel_user_load** | **DELETE** /payout/load/{user_token} | Reverse a user load
_MasspayRubySdk.payout_service_ | **initiate_payout** | **POST** /payout/{user_token} | Initiate a payout transaction
_MasspayRubySdk.payout_service_ | **get_user_payouts_by_token** | **GET** /payout/{user_token} | Get history of payouts by user token
_MasspayRubySdk.payout_service_ | **commit_payout_txn** | **PUT** /payout/{user_token}/{payout_token} | Commit payout transaction
_MasspayRubySdk.payout_service_ | **get_payout_status** | **GET** /payout/{user_token}/{payout_token} | Get status of a payout by payout token
_MasspayRubySdk.payout_service_ | **get_transaction_confirmation_details** | **PATCH** /payout/{user_token}/{payout_token} | Get transaction confirmation details
_MasspayRubySdk.spend_back_service_ | **get_user_spendbacks_by_token** | **GET** /payout/spendback/{user_token} | Get history of spend backs by user token
_MasspayRubySdk.spend_back_service_ | **initiate_spendback** | **POST** /payout/spendback/{user_token} | Initiate a spend back transaction
_MasspayRubySdk.subaccount_service_ | **create_subaccount** | **POST** /subaccount | Create a subaccount
_MasspayRubySdk.subaccount_service_ | **get_subaccount_subaccount_token_ubo** | **POST** /subaccount/{subaccount_token}/ubo | Add UBOs to subaccount
_MasspayRubySdk.subaccount_service_ | **upload_subaccount_ubo_id** | **POST** /subaccount/{subaccount_token}/ubo/{ubo_token}/id | Upload UBO ID photos
_MasspayRubySdk.tax_service_ | **get_tax_users** | **GET** /payout/tax | Get list of users' annual balance
_MasspayRubySdk.tax_service_ | **get_tax_interview_link** | **GET** /payout/{user_token}/tax | Get link for tax interview
_MasspayRubySdk.user_service_ | **create_user** | **POST** /payout/user | Create a user
_MasspayRubySdk.user_service_ | **get_user_by_token** | **GET** /payout/user/{user_token} | Get user by user token
_MasspayRubySdk.user_service_ | **update_user** | **PUT** /payout/user/{user_token} | Updated user
_MasspayRubySdk.user_service_ | **user_lookup** | **GET** /payout/user/lookup | Lookup an existing user
_MasspayRubySdk.user_service_ | **get_user_history** | **GET** /payout/user/{user_token}/history | Transactions history
_MasspayRubySdk.user_service_ | **get_all_users_history** | **GET** /payout/user/history | All Users' Transactions history
_MasspayRubySdk.wallet_service_ | **get_wallet** | **GET** /payout/wallet/{user_token} | Retrieve all available wallets for a user
_MasspayRubySdk.wallet_service_ | **get_autopayout_rules** | **GET** /payout/wallet/{user_token}/{wallet_token}/autopayout | Get all AutoPayout rules
_MasspayRubySdk.wallet_service_ | **create_autopayout_rule** | **POST** /payout/wallet/{user_token}/{wallet_token}/autopayout | Add AutoPayout rule
_MasspayRubySdk.wallet_service_ | **delete_autopayout_rule** | **DELETE** /payout/wallet/{user_token}/{wallet_token}/autopayout | Delete AutoPayout rule


## Contributing

<!--- Explaining how users can contribute to the project. Include guidelines for bug reports, feature requests, and pull requests.--->

To learn more about the possibility of contributing to the subsequent development of this SDK, please visit our [contributing page](./CONTRIBUTING.md). Kindly note that contributions are limited by a unique set of rules in order to ensure clarity.

## License

<!--- Including the license information for your project and the specification of the license type (e.g., MIT, Apache 2.0). --->

Please refer to the [license page](./LICENSE) for more information about the license type and the corresponding terms of use.

## Contact

<!--- Providing contact information or links to relevant communication channels (e.g., email, Slack, Gitter).--->

We kindly request that you direct all questions to our support email:

- [info@masspay.io](mailto:info@masspay.io)

## Frequently Asked Questions (FAQ)

<!--- Including a section addressing frequently asked questions about the SDK.--->

**Q: Where may I obtain an API key?**
A: Please visit our [registration page](https://developers.masspay.io/) if you do not have your unique API key.

<!---  Questions that can be prefilled
What are the main functions or features supported by the SDK?
Are there any examples or tutorials to help me understand how to use the SDK effectively?
How can I get help or assistance if I encounter issues while using the SDK?
How often is the SDK updated, and how can users stay informed about updates?
Are there any best practices recommended for maintaining security while using the SDK?
What are the licensing terms for using the SDK?
--->
