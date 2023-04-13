# MassPayRubySdk::GeneratePricingListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  |  |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **source_currency** | **String** |  | [optional] |
| **requesting_employee_username** | **String** |  | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::GeneratePricingListRequest.new(
  amount: 105.22,
  countries: null,
  source_currency: null,
  requesting_employee_username: null
)
```

