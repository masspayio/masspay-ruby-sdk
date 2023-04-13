# MassPayRubySdk::GetUserAgreementsNames200ResponseInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of user agreement |  |
| **last_modified** | **Time** | Time when the agreement was last updated |  |
| **id** | **Integer** | Id representing the user agreement (to be used to retrieve it) |  |
| **mime_type** | **String** | Mime type of the user agreement (i.e application/pdf) |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::GetUserAgreementsNames200ResponseInner.new(
  name: MassPay Card Program - USD,
  last_modified: 2020-07-21T17:32:28Z,
  id: 2,
  mime_type: application/pdf
)
```

