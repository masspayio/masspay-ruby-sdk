# MassPayRubySdk::IDUpload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of image being uploaded |  |
| **content** | **String** | Base64 encoded image (png|jpg|jpeg). Maximum total images size is 10MB |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::IDUpload.new(
  type: document-front,
  content: null
)
```

