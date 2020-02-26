require "./timelines"
require "./users"
require "./friends_and_followers"
require "./tweets"
require "./search"
require "./direct_messages"
require "./geo"

module Twitter
  module REST
    module API
      include Twitter::REST::Users
      include Twitter::REST::Timelines
      include Twitter::REST::FriendsAndFollowers
      include Twitter::REST::Tweets
      include Twitter::REST::Search
      include Twitter::REST::DirectMessages
      include Twitter::REST::Geo
    end
  end
end
