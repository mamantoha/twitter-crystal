module Twitter
  class Settings
    include JSON::Serializable

    property sleep_time : SleepTime

    property time_zone : TimeZone

    @[JSON::Field(key: "protected")]
    property settings_protected : Bool

    property screen_name : String

    property always_use_https : Bool

    property use_cookie_personalization : Bool

    property geo_enabled : Bool

    property language : String

    property discoverable_by_email : Bool

    property discoverable_by_mobile_phone : Bool

    property display_sensitive_media : Bool

    property allow_contributor_request : String

    property allow_dms_from : String

    property allow_dm_groups_from : String

    property translator_type : String
  end

  class SleepTime
    include JSON::Serializable

    property enabled : Bool
  end

  class TimeZone
    include JSON::Serializable

    property name : String

    property utc_offset : Int32

    property tzinfo_name : String
  end
end
