require "json"

module Twitter
  class Cursor
    include JSON::Serializable

    property next_cursor : Int64

    property next_cursor_str : String

    property previous_cursor : Int64

    property previous_cursor_str : String
  end
end
