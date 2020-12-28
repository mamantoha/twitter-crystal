module Twitter
  class UrlEntity
    include JSON::Serializable

    property url : String

    property expanded_url : String?

    property display_url : String?

    property indices : Array(Int32)
  end
end
