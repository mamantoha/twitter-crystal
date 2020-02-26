require "json"

module Twitter
  class Relationship
    include JSON::Serializable

    property name : String

    property screen_name : String

    property id : Int64

    property id_str : String

    property connections : Array(String)
  end
end
