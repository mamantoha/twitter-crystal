require "json"

module Twitter
  class UserUrlEntity
    include JSON::Serializable

    property urls : Array(UrlEntity?)
  end
end
