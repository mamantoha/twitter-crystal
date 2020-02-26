require "json"

module Twitter
  class Location
    include JSON::Serializable

    property id : String

    property url : String

    property place_type : String

    property name : String

    property full_name : String

    property country_code : String

    property country : String

    property contained_within : Array(Location)?

    property geometry : BoundingBox?

    property polylines : Array(String)?

    property centroid : Array(Float64)?

    property bounding_box : BoundingBox?

    property attributes : Hash(String, String)

    def_equals id
  end
end
