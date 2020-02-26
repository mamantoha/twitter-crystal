require "json"

module Twitter
  class SymbolEntity
    include JSON::Serializable

    property text : String

    property indices : Array(Int32)
  end
end
