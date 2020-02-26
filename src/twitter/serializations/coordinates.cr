require "json"

module Twitter
  class Coordinates
    include JSON::Serializable

    @[JSON::Field(key: "type")]
    property coordinates_type : String

    property coordinates : Array(Float64)
  end
end
