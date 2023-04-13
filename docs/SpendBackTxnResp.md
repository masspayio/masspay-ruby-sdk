# MassPayRubySdk::SpendBackTxnResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spendback_token** | **String** | Token that represents the spend back that was just created. |  |
| **client_spendback_id** | **String** | A client defined spend back identifier. This is the unique ID assigned to the load on your system. Max 50 characters. |  |
| **status** | **String** | Status that indicates whether the transaction was successfully processed. If &#x60;success&#x60;, everything was processed correctly. &#x60;failure&#x60; indicates a generic error. |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::SpendBackTxnResp.new(
  spendback_token: null,
  client_spendback_id: aEjn345,
  status: null
)
```

