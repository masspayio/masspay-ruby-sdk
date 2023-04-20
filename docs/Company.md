# MassPayRubySdk::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_logo** | **String** | base64 representation of the company logo |  |
| **services** | [**Array&lt;Service&gt;**](Service.md) |  |  |
| **rating** | **Float** | Overall rating of provider calculated from feedback provided by users from previous trasnactions |  |
| **description** | **String** | A short description of the company |  |
| **company_name** | **String** | The company name |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::Company.new(
  company_logo: [B@2a0fb0ca,
  services: null,
  rating: 4.5,
  description: Pontual is a top leading provider with over 10 years of industry experience,
  company_name: Pontual
)
```

