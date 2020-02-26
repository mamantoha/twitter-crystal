require "json"

module Twitter
  class PollEntity
    include JSON::Serializable

    property options : Array(PollOption)

    property end_datetime : String

    property duration_minutes : Int32
  end
end
