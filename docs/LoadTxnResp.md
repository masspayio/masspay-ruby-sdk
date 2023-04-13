# MassPayRubySdk::LoadTxnResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **load_token** | **String** | Token that represents the load that was just created. |  |
| **status** | **String** | Status that indicates whether the transaction was successfully processed. If &#x60;COMPLETED&#x60;, the load was successfully processed. &#x60;CANCELLED&#x60; indicates a generic error. and &#x60;SCHEDULED&#x60; means the load was successfully scheduled |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::LoadTxnResp.new(
  load_token: ba4275f2-bae1-488d-9d6f-20af1cd83574,
  status: null
)
```

