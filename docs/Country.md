# MassPayRubySdk::Country

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Country code [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) |  |
| **name** | **String** | Name of country |  |
| **three_letter_code** | **String** | The user&#39;s country code. ISO_3166-1_alpha-3 code |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::Country.new(
  code: MX,
  name: Mexico,
  three_letter_code: MEX
)
```

