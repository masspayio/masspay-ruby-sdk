=begin
MassPay API

The version of the OpenAPI document: 0.1.4
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end
require_relative './version'

module MasspayRubySdk
  USER_AGENT = "MasspayRubySdk/v#{VERSION}"

  CONTENT_TYPE_HEADER_NAME = 'Content-Type'
  USER_AGENT_HEADER_NAME   = 'User-Agent'

  DEFAULT_CONTENT_TYPE = 'application/json; charset=UTF-8'
  POST_CONTENT_TYPE = 'application/x-www-form-urlencoded'
  MULTIPART_CONTENT_TYPE = 'multipart/form-data'
end
