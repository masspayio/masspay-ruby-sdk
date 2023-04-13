# MassPayRubySdk::AttrValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The token that represents the attribute that needs to be updated. |  |
| **value** | **String** | The value that needs to be stored for the associated token |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::AttrValue.new(
  token: e2ca24e9-c546-4c64-90d2-cb8e70e7c9ba,
  value: 432532532
)
```

