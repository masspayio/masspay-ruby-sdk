# MassPayRubySdk::PayoutTxn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_transfer_id** | **String** | A client defined transfer identifier. This is the unique ID assigned to the transfer on your system. Max 50 characters. | [optional] |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided | [optional][default to &#39;USD&#39;] |
| **destination_currency_code** | **String** | The currency the funds will be deposited into. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format |  |
| **source_token** | **String** | Token that represents the funding source i.e. bank account, wallet. 36 characters long |  |
| **destination_token** | **String** | Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback. If not provided, the last destination that was used for this user will be used. 36 characters long |  |
| **destination_amount** | **Float** | The amount to be sent for payout in source currency. i.e USD. Must be provided if source_amount is empty | [optional] |
| **source_amount** | **Float** | The amount to be received by the payout in source currency. i.e USD. Must be provided if destination_amount is empty | [optional] |
| **attr_set_token** | **String** | Token that represents set of attributes that associated with destination_token. For example, bank account, mobile account, wallet id, etc. If not provided, uses the last one used. 36 characters long | [optional] |
| **metadata** | **String** | Optional JSON object with attributes that can later be searched to locate this payout. Do not include PII as this object is not encrypted. | [optional] |
| **notify_user** | **Boolean** | Should we notify the user via email/sms about status updates for this payout? | [optional][default to false] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::PayoutTxn.new(
  client_transfer_id: aEjn345,
  source_currency_code: USD,
  destination_currency_code: MXN,
  source_token: null,
  destination_token: null,
  destination_amount: 100.5,
  source_amount: 100.5,
  attr_set_token: null,
  metadata: {&quot;group_id&quot;:541},
  notify_user: null
)
```

