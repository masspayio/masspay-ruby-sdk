# MassPayRubySdk::GetWalletCardInfo200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_number** | **Integer** | 16 Digits card number |  |
| **cvv** | **String** | 3 Digits cvv code |  |
| **expiration_date** | **Date** | Card expiration date |  |
| **pin_number** | **String** | Card pin number (used in ATM machines) |  |
| **balance** | **Float** | Available balance on the card |  |
| **type** | **String** | Card type |  |
| **status** | **String** | Status of the card | [default to &#39;ACTIVE&#39;] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::GetWalletCardInfo200Response.new(
  card_number: 4016483301928344,
  cvv: 123,
  expiration_date: null,
  pin_number: 1234,
  balance: 103,
  type: VISA,
  status: ACTIVE
)
```

