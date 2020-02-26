require "json"

module Twitter
  class Place
    include JSON::Serializable

    property id : String

    property url : String

    property place_type : String

    property name : String

    property full_name : String

    property country_code : String

    property country : String

    property bounding_box : BoundingBox?
  end
end
