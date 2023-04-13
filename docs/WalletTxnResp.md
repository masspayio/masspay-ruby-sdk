# MassPayRubySdk::WalletTxnResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user |  |
| **token** | **String** | Token representing the wallet |  |
| **balance** | **Float** | The wallet&#39;s current balance in USD |  |
| **currency_code** | **String** | The currency wallet balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD |  |
| **type** | **String** | Type of wallet |  |
| **card_type** | **String** | In case type of wallet is MASSPAY_CARD, card_type would be provided with the type of card it is | [optional] |
| **last_4** | **String** | In case type of wallet is MASSPAY_CARD, last_4 would be provided with the last four digits of the card | [optional] |
| **active** | **Boolean** | An indicator whether the wallet is active. If inactive, can still retrieve historical transactions history |  |
| **client_paying_fees** | **Boolean** | An indicator whether the fees for payouts using this wallet are paid by the client. If false, the user pays the fees | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::WalletTxnResp.new(
  user_token: usr_ba4275f2-bae1-488d-9d6f-20af1cd83574,
  token: null,
  balance: 100.5,
  currency_code: USD,
  type: USER_FUNDS,
  card_type: VISA,
  last_4: 1234,
  active: null,
  client_paying_fees: null
)
```

