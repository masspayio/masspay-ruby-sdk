# MassPayRubySdk::AttrTxn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values** | [**Array&lt;AttrValue&gt;**](AttrValue.md) |  |  |
| **attr_set_token** | **String** | The token that represents a set of attributes for a specific payer. Optional, specify the value if you&#39;re trying to update a value of a specific attributes set. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::AttrTxn.new(
  values: null,
  attr_set_token: attr_set_e2ca24e9-c546-4c64-90d2-cb8e70e7c9ba
)
```

