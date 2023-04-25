# MassPayRubySdk::PayoutTxnResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_token** | **String** | Token that represents the transaction that was just created. Need to be used to commit the transaction in &#x60;/payout/{user_token}/{payout_token}&#x60;. Value would be NSF if there are not enough funds in the &#x60;source_token&#x60;. Value would be &#x60;DUPLICATE&#x60; if there is a duplicate &#x60;client_transfer_id&#x60;. |  |
| **client_transfer_id** | **String** | A client defined transfer identifier. This is the unique ID assigned to the transfer on your system. Max 50 characters. |  |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided |  |
| **destination_currency_code** | **String** | The currency the funds will be deposited into. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format |  |
| **source_token** | **String** | Token that represents the funding source i.e. your bank account, user&#39;s wallet. 36 characters long |  |
| **destination_token** | **String** | Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback. If not provided, the last destination that was used for this user will be used. 36 characters long |  |
| **destination_amount** | **Float** | The amount to be sent for payout in source currency. i.e USD. Must be provided if source_amount is empty |  |
| **source_amount** | **Float** | The amount to be received by the payout in source currency. i.e USD. Must be provided if destination_amount is empty |  |
| **attr_set_token** | **String** | Token that represents set of attributes that associated with destination_token. For example, bank account, mobile account, wallet id, etc. If not provided, uses the last one used. 36 characters long |  |
| **exchange_rate** | **Float** | The exchange rate to convert source_amount to destination_amount |  |
| **fee** | **Float** | Fee to be charged for the transaction |  |
| **expiration** | **String** | The time and date at which the transaction will expire. The transaction has to be finalized before this time. Transactions are valid for 2 minutes from creation time. If expired, a new transaction has to be created. |  |
| **pickup_code** | **String** | Code/pin that is required when collecting the money. Should be provided to the recipient to present to payout location. |  |
| **status** | **String** | The status of the transaction |  |
| **payer_logo** | **String** | base64 representation of the payer logo | [optional] |
| **payer_name** | **String** | Name of payer |  |
| **delivery_type** | **String** | The type of delivery |  |
| **country_code** | **String** | Country code [ISO_3166](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) |  |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this payout. Do not include PII as this object is not encrypted. | [optional] |
| **estimated_availability** | **Time** | Estimated availability of funds. When funds would be available to pickup/deposited |  |
| **status_reason** | **String** | Optional. Contains the reason for the status change. Most commonly used for CANCELLED status with the reason for cancellation | [optional] |
| **attrs** | **Object** | The relevant attributes that were used to fulfill this payout | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::PayoutTxnResp.new(
  payout_token: ba4275f2-bae1-488d-9d6f-20af1cd83574,
  client_transfer_id: aEjn345,
  source_currency_code: USD,
  destination_currency_code: MXN,
  source_token: ba4275f2-bae1-488d-9d6f-20af1cd83574,
  destination_token: d2138fd0-00be-45a8-985f-4f5bde500962,
  destination_amount: 100.5,
  source_amount: 100.5,
  attr_set_token: b1a867c1-6e36-4525-b6d5-a20bac80e3b0,
  exchange_rate: 18.55,
  fee: 2.99,
  expiration: 2019-06-26T22:32:05,
  pickup_code: 54238173,
  status: null,
  payer_logo: [B@3459a3c9,
  payer_name: Elektra,
  delivery_type: null,
  country_code: MEX,
  metadata: {&quot;group_id&quot;:541},
  estimated_availability: 2020-07-21T17:32:28Z,
  status_reason: null,
  attrs: null
)
```

