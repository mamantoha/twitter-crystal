require "json"

module Twitter
  class Status
    include JSON::Serializable

    @[JSON::Field(converter: Time::Format.new("%a %b %d %T +0000 %Y"))]
    property created_at : Time

    property favorite_count : Int32?

    property favorited : Bool

    property id : Float64

    property in_reply_to_screen_name : String?

    property in_reply_to_status_id : Float64?

    property in_reply_to_user_id : Float64?

    property lang : String?

    property retweet_count : Int32

    property retweeted : Bool

    property source : String

    property text : String

    property truncated : Bool
  end
end
