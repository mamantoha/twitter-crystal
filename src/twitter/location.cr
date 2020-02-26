require "json"

module Twitter
  class Location
    JSON.mapping({
      id:               String,
      url:              String,
      place_type:       String,
      name:             String,
      full_name:        String,
      country_code:     String,
      country:          String,
      contained_within: Array(String),
      bounding_box:     BoundingBox?,
      attributes:       Hash(String, String),
      geometry:         BoundingBox?,
      polylines:        Array(String)?,
    })

    def_equals id
  end
end
