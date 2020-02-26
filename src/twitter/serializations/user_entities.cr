require "json"

module Twitter
  class UserEntities
    include JSON::Serializable

    property description : UserDescriptionEntity

    property url : UserUrlEntity?
  end
end
