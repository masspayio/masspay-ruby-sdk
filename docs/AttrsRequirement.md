# MassPayRubySdk::AttrsRequirement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The token that represents the attribute. |  |
| **attr_set_token** | **String** | The token that represents the stored attributes for this payer. You would use this token in attr_set_token of &#x60;initiatePayout&#x60; if you have to specify an account number when paying a transaction out. | [optional] |
| **label** | **String** | The label that describes that required attribute | [optional] |
| **validation** | **String** | RegEx that validates that input | [optional] |
| **is_optional** | **Boolean** | Flag to indicate whether this field is required or not | [optional] |
| **value** | **String** | The existing value that is stored. &#39;Null&#39; if no existing value is stored. |  |
| **expected_value** | **String** | Written explanation of the value that the regex validation requires | [optional] |
| **type** | **String** | The type of attribute | [optional] |
| **input_type** | **String** | The type of input field that is suggested for this this attribute | [default to &#39;text&#39;] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::AttrsRequirement.new(
  token: attr_e2ca24e9-c546-4c64-90d2-cb8e70e7c9ba,
  attr_set_token: attr_set_e2ca24e9-c546-4c64-90d2-cb8e70e7c9ba,
  label: Checking Account Number,
  validation: [0-9]{50},
  is_optional: true,
  value: 432532532,
  expected_value: Date format MM/DD/YYYY,
  type: BankAccountNumber,
  input_type: text
)
```

