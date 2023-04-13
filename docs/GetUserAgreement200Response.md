# MassPayRubySdk::GetUserAgreement200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of user agreement |  |
| **content** | **String** | Base64 encoded byte representing the content of the file | [readonly] |
| **last_modified** | **Time** | Time when the agreement was last updated |  |
| **id** | **Integer** | Id representing the user agreement |  |
| **mime_type** | **String** | Mime type of the user agreement (i.e application/pdf) | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::GetUserAgreement200Response.new(
  name: MassPay Card Program - USD,
  content: null,
  last_modified: 2020-07-21T17:32:28Z,
  id: 2,
  mime_type: application/pdf
)
```

