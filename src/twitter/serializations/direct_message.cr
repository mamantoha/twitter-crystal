module Twitter
  class DirectMessage
    include JSON::Serializable

    property id : Int64

    property id_str : String

    property recipient : Twitter::User

    property sender_id : Int64

    property sender_screen_name : String

    property text : String

    @[JSON::Field(converter: Time::Format.new("%a %b %d %T +0000 %Y"))]
    property created_at : Time
  end
end
