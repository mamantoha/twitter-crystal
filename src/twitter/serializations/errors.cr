require "json"

module Twitter
  struct Errors
    include JSON::Serializable

    property errors : Array(Twitter::Error)
  end
end
