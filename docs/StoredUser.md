# MassPayRubySdk::StoredUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | Token representing the user that was just created |  |
| **status** | **String** | The status of the user |  |
| **created_on** | **String** | The timestamp the user was created in the system. Using UTC timestamp.[ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) |  |
| **internal_user_id** | **String** | A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ | |  |
| **address1** | **String** | The user&#39;s street address. | [optional] |
| **address2** | **String** | The user&#39;s street address, line 2. | [optional] |
| **city** | **String** | The user&#39;s city. | [optional] |
| **state_province** | **String** | The user&#39;s state/province. | [optional] |
| **postal_code** | **String** | The user&#39;s postal code. | [optional] |
| **country** | **String** | The user&#39;s country code. ISO_3166-1_alpha-3 code | [optional] |
| **first_name** | **String** | The user&#39;s first name. (If Business account, the first name of the representative) |  |
| **middle_name** | **String** | The user&#39;s middle name. (If Business account, the middle name of the representative) | [optional] |
| **last_name** | **String** | The user&#39;s last name. (If Business account, the last name of the representative) |  |
| **email** | **String** | The user&#39;s e-mail address. Must be unique. Cannot have two users with the same e-mail address. |  |
| **language** | **String** | The user&#39;s preferred language of communication. If not provided, defaults to English (en) | [optional] |
| **mobile_number** | **String** | (Optional) Mobile number of user. Allows for SMS notifications upon availability of funds | [optional] |
| **business_name** | **String** | Company legal name (Only if Business account) | [optional] |
| **timezone** | **String** | User&#39;s computed timezone |  |
| **date_of_birth** | **Date** | Date of birth. (optional). Minimum 18 years old | [optional] |
| **metadata** | **Object** | Optional JSON object with attributes that can later be searched to locate this user. Do not include PII as this object is not encrypted. | [optional] |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::StoredUser.new(
  user_token: null,
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
  timezone: America/Los_Angeles,
  date_of_birth: Mon Mar 24 01:00:00 CET 1975,
  metadata: {&quot;group_id&quot;:541}
)
```

