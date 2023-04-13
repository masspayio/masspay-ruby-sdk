# MassPayRubySdk::Loads

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **load_token** | **String** | Token representing the load token |  |
| **time_of_load** | **String** | The timestamp the load was processed. If not processed yet, a future date will be returned. Using UTC timestamp.[ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) |  |
| **client_load_id** | **String** | A client defined load identifier. This is the unique ID assigned to the load on your system. Max 50 characters. |  |
| **source_token** | **String** | Token that represents the funding source i.e. bank account, wallet. 36 characters long |  |
| **wallet_token** | **String** | Token that represents the wallet that received the funds. 36 characters long |  |
| **amount** | **Float** | The amount to credit the user&#39;s wallet in source currency |  |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided |  |
| **notes** | **String** | A description for the load. Will be visible to the user receiving the load |  |
| **status** | **String** | Status of the load |  |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this load. Do not include PII as this object is not encrypted. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::Loads.new(
  load_token: ld_ba4275f2-bae1-488d-9d6f-20af1cd83574,
  time_of_load: 2019-07-07T23:03:05,
  client_load_id: aEjn345,
  source_token: null,
  wallet_token: null,
  amount: 100.5,
  source_currency_code: USD,
  notes: Commission payment for July,
  status: COMPLETED,
  metadata: {&quot;group_id&quot;:541}
)
```

