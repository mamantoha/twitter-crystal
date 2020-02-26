require "json"

module Twitter
  class PollOption
    include JSON::Serializable

    property position : Int32

    property text : String
  end
end
