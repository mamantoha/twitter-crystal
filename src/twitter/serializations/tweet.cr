module Twitter
  class Tweet
    include JSON::Serializable

    @[JSON::Field(converter: Time::Format.new("%a %b %d %T +0000 %Y"))]
    property created_at : Time

    property favorite_count : Int32?

    property favorited : Bool?

    property id : Int64

    property id_str : String

    property in_reply_to_screen_name : String?

    property in_reply_to_status_id : Float64?

    property in_reply_to_user_id : Int64?

    property lang : String?

    property retweet_count : Int32

    property? retweeted : Bool

    property possibly_sensitive : Bool?

    property source : String

    property text : String

    property? truncated : Bool

    property user : User

    property place : Place?

    property geo : Coordinates?

    property coordinates : Coordinates?

    property is_quote_status : Bool?

    property quoted_status : Tweet?

    property retweeted_status : Tweet?

    property entities : TweetEntities

    def_equals id
  end
end
