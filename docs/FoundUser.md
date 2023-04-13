# MassPayRubySdk::FoundUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_token** | **String** | The token of the found user |  |
| **first_name** | **String** | First name of the user |  |
| **last_name** | **String** | Last name of the user |  |
| **internal_user_id** | **String** | A client-defined identifier for the user. This is the unique ID assigned to the user on your system. Max 75 characters. Allows letters, numbers, and + , - . / _ ~ | |  |

## Example

```ruby
require 'masspay_ruby_sdk'

instance = MassPayRubySdk::FoundUser.new(
  user_token: usr_f4741aa2-9f39-4358-8247-2409e3fc2715,
  first_name: null,
  last_name: null,
  internal_user_id: 4324-rOzk
)
```

