# MassPayRubySdk::ServicePayersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_token** | **String** | Token that represents the payout destination. 36 characters long |  |
| **payer_logo** | **String** | base64 representation of the payer logo |  |
| **payer_name** | **String** | Name of payer |  |
| **exchange_rate** | [**Array&lt;ServicePayersInnerExchangeRateInner&gt;**](ServicePayersInnerExchangeRateInner.md) | Lists all available currencies and their estimated rates |  |
| **fee** | **Float** | Service fee |  |
| **max_limit** | **Float** | The maximum amount the user can send with this service. 0 if no upper limit |  |
| **min_limit** | **Float** | The minimum amount the user can send with this service. 0 if no lower limit |  |
| **source_amount** | **Float** | Optional return field. Will only show if &#x60;limit&#x60; parameter is provided | [optional] |
| **number_of_locations** | **Integer** | Total number of locations. Mostly relevant for cash pickup services. 0 if unknown or irrelevant | [optional][default to 0] |
| **estimated_availability** | **Time** | Estimated availability of funds. When funds would be available to pickup/deposited | [optional] |
| **additional_description** | **String** | When available, additional description that explains the service offered or requirements for funds delivery. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::ServicePayersInner.new(
  destination_token: null,
  payer_logo: [B@54cf7651,
  payer_name: Elektra,
  exchange_rate: null,
  fee: 8,
  max_limit: 10000,
  min_limit: 0,
  source_amount: 104.3,
  number_of_locations: 13007,
  estimated_availability: 2020-07-21T17:32:28Z,
  additional_description: Requires drivers license to pickup funds
)
```

