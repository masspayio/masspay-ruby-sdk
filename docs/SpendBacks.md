# MassPayRubySdk::SpendBacks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spendback_token** | **String** | Token representing the load token |  |
| **time_of_spendback** | **String** | The timestamp the spend back was created in the system. Using UTC timestamp.[ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) |  |
| **client_spendback_id** | **String** | A client defined spend back identifier. This is the unique ID assigned to the spend back on your system. Max 50 characters. |  |
| **source_token** | **String** | Token that represents the funding source i.e. bank account, wallet. 36 characters long |  |
| **wallet_token** | **String** | Token that represents the wallet that received the funds. 36 characters long |  |
| **amount** | **Float** | The amount to credit the user&#39;s wallet in source currency |  |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided |  |
| **notes** | **String** | A description for the load. Will be visible to the user receiving the load |  |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this spendback. Do not include PII as this object is not encrypted. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::SpendBacks.new(
  spendback_token: spnd_bk_4275f2-bae1-488d-9d6f-20af1cd83574,
  time_of_spendback: 2019-07-07T23:03:05,
  client_spendback_id: aEjn345,
  source_token: null,
  wallet_token: null,
  amount: 100.5,
  source_currency_code: USD,
  notes: Commission payment for July,
  metadata: {&quot;group_id&quot;:541}
)
```

