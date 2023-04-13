# MassPayRubySdk::LoadTxn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_load_id** | **String** | A client defined load identifier. This is the unique ID assigned to the load on your system. Max 50 characters. |  |
| **source_token** | **String** | Token that represents the funding source i.e. bank account, wallet. 36 characters long |  |
| **amount** | **Float** | The amount to credit the user&#39;s wallet in source currency |  |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided | [optional] |
| **notes** | **String** | A description for the load. Will be visible to the user receiving the load | [optional] |
| **notify_user** | **Boolean** | Should we notify the user via email that they&#39;ve received a load? If the user has no existing account, they will receive instructions to establish such account. | [optional][default to true] |
| **time_to_process** | **String** | Future date/time to process the load on. If none is provided, it is processed right away. Time to be provided in UTC [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) | [optional] |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this load. Do not include PII as this object is not encrypted. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::LoadTxn.new(
  client_load_id: aEjn345,
  source_token: ba4275f2-bae1-488d-9d6f-20af1cd83574,
  amount: 100.5,
  source_currency_code: USD,
  notes: Commission payment for July,
  notify_user: null,
  time_to_process: The date/time to process the load. In UTC. 2021-02-25T23:00:00Z,
  metadata: {&quot;group_id&quot;:541}
)
```

