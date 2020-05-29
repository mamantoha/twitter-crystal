module Twitter
  class HashtagEntity
    include JSON::Serializable

    property text : String

    property indices : Array(Int32)
  end
end
