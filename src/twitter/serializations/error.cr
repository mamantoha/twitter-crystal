module Twitter
  struct Error
    include JSON::Serializable

    property message : String

    property code : Int32
  end
end
