require "json"

module Twitter
  class TweetEntities
    include JSON::Serializable

    property hashtags : Array(HashtagEntity?)

    property urls : Array(UrlEntity)?

    property user_mentions : Array(UserMentionEntity?)

    property symbols : Array(SymbolEntity?)

    property polls : Array(PollEntity?)?
  end
end
