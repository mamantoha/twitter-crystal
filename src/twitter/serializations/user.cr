module Twitter
  class User
    include JSON::Serializable

    @[JSON::Field(converter: Time::Format.new("%a %b %d %T +0000 %Y"))]
    property created_at : Time

    property? default_profile : Bool

    property? default_profile_image : Bool

    property favourites_count : Int32

    property followers_count : Int32

    property friends_count : Int32

    property id : Int64

    property listed_count : Int32

    property location : String

    property name : String

    property needs_phone_verification : Bool?

    property profile_banner_url : String?

    property profile_image_url_https : String

    @[JSON::Field(key: "protected")]
    property? user_protected : Bool

    property screen_name : String

    property status : Status?

    property statuses_count : Int32

    property suspended : Bool?

    property? verified : Bool

    property description : String

    property entities : UserEntities?

    def_equals id
  end
end
