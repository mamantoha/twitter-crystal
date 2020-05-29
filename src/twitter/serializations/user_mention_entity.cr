module Twitter
  class UserMentionEntity
    include JSON::Serializable

    property screen_name : String

    property name : String

    property id : Int64

    property id_str : String

    property indices : Array(Int32)
  end
end
