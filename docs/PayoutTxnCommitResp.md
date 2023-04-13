# MassPayRubySdk::PayoutTxnCommitResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_token** | **String** | Token that represents the transaction that was just created. |  |
| **status** | **String** | Status that indicates whether the transaction was successfully processed. If &#x60;success&#x60;, everything was processed correctly. &#x60;failure&#x60; indicates a generic error. &#x60;addtl_attr_req&#x60; indicates that in order to process this transaction, additional attributes are required to be updated for this customer. &#x60;ex_rate_expired&#x60; indicates that the transaction exchange rate has expired and a new transaction has to be created. |  |
| **pickup_code** | **String** | Code/pin that is required when collecting the money. Should be provided to the recipient to present to payout location. | [optional] |
| **errors** | **String** | Description of errors preventing transfer from being injected. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::PayoutTxnCommitResp.new(
  payout_token: null,
  status: null,
  pickup_code: 54238173,
  errors: Duplicate transfer
)
```

