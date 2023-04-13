# MassPayRubySdk::Service

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Country code [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) |  |
| **delivery_type** | **String** | The type of service. I.e. cash pickup, home delivery, etc. |  |
| **payers** | [**Array&lt;ServicePayersInner&gt;**](ServicePayersInner.md) |  |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::Service.new(
  country_code: MEX,
  delivery_type: null,
  payers: null
)
```

