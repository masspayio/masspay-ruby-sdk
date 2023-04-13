# MassPayRubySdk::AvailableBalanceTxnResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Token representing your funding account. You should use this as source_token when paying out transactions. |  |
| **balance** | **Float** | Your account&#39;s current available balance in USD |  |
| **currency_code** | **String** | The currency the balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::AvailableBalanceTxnResp.new(
  token: 8bb3693f-2f98-43dd-a990-615b6a21596d,
  balance: 100.5,
  currency_code: USD
)
```

