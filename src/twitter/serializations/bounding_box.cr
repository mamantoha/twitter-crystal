require "json"

module Twitter
  class BoundingBox
    include JSON::Serializable

    @[JSON::Field(key: "type")]
    property bounding_box_type : String

    property coordinates : Array(Array(Array(Float64)))
  end
end
