require "json"

module Twitter
  class UserDescriptionEntity
    include JSON::Serializable

    property urls : Array(UrlEntity)?
  end
end
