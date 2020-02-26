require "json"
require "../ext/json/from_json"
require "../serializations/status"

module Twitter
  class Delete
    include JSON::Serializable

    property status : Status

    @[JSON::Field(converter: Time::EpochMillisConverterString)]
    property timestamp_ms : Time
  end
end
