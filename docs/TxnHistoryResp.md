# MassPayRubySdk::TxnHistoryResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Token represnting the transaction |  |
| **type** | **String** | Type of transaction |  |
| **time_of_txn** | **Time** | Time the transaction was created. In UTC |  |
| **source_amount** | **Float** | Source amount |  |
| **source_currency_code** | **String** | The currency originating balance is stored in. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format. In most cases this value will be USD, and therefore the defaut value if none is provided | [default to &#39;USD&#39;] |
| **destination_amount** | **Float** | The amount that was received in &#x60;destination_currency_code&#x60; |  |
| **destination_currency_code** | **String** | The currency of the funds received. Using [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format |  |
| **fee** | **Float** | Fee of the transaction |  |
| **status** | **String** | Status of the transaction |  |
| **notes** | **String** | Notes of the transaction when load or spend back | [optional] |
| **payer_name** | **String** | Name of the payer when payout transaction | [optional] |
| **pickup_code** | **String** | Code/pin that is required when collecting the money when payout transaction | [optional] |
| **source_token** | **String** | Token that represents the funding source i.e. bank account, wallet. 36 characters long | [optional] |
| **destination_token** | **String** | Token that represents the payout destination i.e. Omnex-&gt;Brazil-&gt;Bank Deposit-&gt;Itau. To be retrieved from the #pricing callback. If not provided, the last destination that was used for this user will be used. 36 characters long |  |
| **delivery_type** | **String** | The type of service. I.e. cash pickup, home delivery, etc. Only provided for payouts | [optional] |
| **client_transfer_id** | **String** | A client defined transfer identifier. This is the unique ID assigned to the transfer on your system. Max 50 characters. | [optional] |
| **status_reason** | **String** | The reason for the status change. Usually would include reason for an ERROR or CANCEL status | [optional] |
| **client_id** | **Integer** | Optional client id | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::TxnHistoryResp.new(
  token: null,
  type: payout,
  time_of_txn: null,
  source_amount: 50.1,
  source_currency_code: USD,
  destination_amount: 44.99,
  destination_currency_code: null,
  fee: 2.98,
  status: READY_FOR_PICKUP,
  notes: Purchase of Candles. Order #14930,
  payer_name: Elektra,
  pickup_code: 343432,
  source_token: null,
  destination_token: null,
  delivery_type: null,
  client_transfer_id: null,
  status_reason: null,
  client_id: null
)
```

