# MassPayRubySdk::ServicePayersInnerExchangeRateInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_symbol** | **String** | Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. |  |
| **exchange_rate** | **Float** | Estimated rate |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::ServicePayersInnerExchangeRateInner.new(
  currency_symbol: MXN,
  exchange_rate: 18.37
)
```

