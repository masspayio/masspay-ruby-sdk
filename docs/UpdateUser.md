# MassPayRubySdk::UpdateUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the user, if set to ACTIVE when current status is DEACTIVE, reactivation fee will incur |  |
| **created_on** | **String** | The timestamp the user was created in the system. Using UTC timestamp.[ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) | [optional] |
| **internal_user_id** | **String** | A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ | |  |
| **address1** | **String** | The user&#39;s street address. |  |
| **address2** | **String** | The user&#39;s street address, line 2. | [optional] |
| **city** | **String** | The user&#39;s city. |  |
| **state_province** | **String** | The user&#39;s state/province. |  |
| **postal_code** | **String** | The user&#39;s postal code. |  |
| **country** | **String** | The user&#39;s country code. ISO_3166-1_alpha-3 code |  |
| **first_name** | **String** | The user&#39;s first name. |  |
| **middle_name** | **String** | The user&#39;s middle name. | [optional] |
| **last_name** | **String** | The user&#39;s last name. |  |
| **email** | **String** | The user&#39;s e-mail address. Must be unique. Cannot have two users with the same e-mail address. |  |
| **language** | **String** | The user&#39;s preferred language of communication. If not provided, defaults to English (en) | [optional] |
| **mobile_number** | **String** | (Optional) Mobile number of user. Allows for SMS notifications upon availability of funds | [optional] |
| **business_name** | **String** | Company legal name (Only if Business account) | [optional] |
| **date_of_birth** | **Date** | Date of birth. (optional). Minimum 18 years old | [optional] |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this user. Do not include PII as this object is not encrypted. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::UpdateUser.new(
  status: null,
  created_on: 2019-07-07T23:03:05,
  internal_user_id: 4324-rOzk,
  address1: 2000 main st,
  address2: apt D,
  city: Santa Monica,
  state_province: CA,
  postal_code: 90405,
  country: USA,
  first_name: John,
  middle_name: ,
  last_name: Doe,
  email: jdoe@gmail.com,
  language: en,
  mobile_number: 16502000226,
  business_name: ABC Company,
  date_of_birth: Mon Mar 24 01:00:00 CET 1975,
  metadata: {&quot;group_id&quot;:541}
)
```

