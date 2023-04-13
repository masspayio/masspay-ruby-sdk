# MassPayRubySdk::AutopayRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_token** | **String** | The destination_token to autopay (send payout to) |  |
| **percentage** | **Float** | The percent of incoming load that should be autopaid to the destination_token | [default to 100] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::AutopayRule.new(
  destination_token: dest_d2138fd0-00be-45a8-985f-4f5bde500962,
  percentage: 50
)
```

