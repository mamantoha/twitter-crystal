require "json"

module Twitter
  class Status
    include JSON::Serializable

    property created_at : String

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
