# MassPayRubySdk::SpendBackTxn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_spendback_id** | **String** | A client defined spend back identifier. This is the unique ID assigned to the load on your system. Max 50 characters. |  |
| **source_token** | **String** | Token that represents the funding source i.e. bank account, wallet. 36 characters long |  |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided | [default to &#39;USD&#39;] |
| **amount** | **Float** | The amount to debit the user&#39;s wallet in source currency |  |
| **notes** | **String** | A description for the spend back | [optional] |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this spendback. Do not include PII as this object is not encrypted. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::SpendBackTxn.new(
  client_spendback_id: aEjn345,
  source_token: null,
  source_currency_code: USD,
  amount: 100.5,
  notes: Purchase of Candles. Order #14930,
  metadata: {&quot;group_id&quot;:541}
)
```

