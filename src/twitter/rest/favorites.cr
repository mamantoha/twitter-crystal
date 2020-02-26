module Twitter
  module REST
    module Favorites
      # Favorites (likes) the `Tweet` specified in the *id* parameter as the authenticating user.
      # Returns the favorite `Tweet` when successful.
      def like(id : Int64) : Twitter::Tweet
        response = post("/1.1/favorites/create.json", {"id" => id.to_s})
        Twitter::Tweet.from_json(response)
      end

      # Unfavorites (un-likes) the `Tweet` specified in the *id* parameter as the authenticating user.
      # Returns the un-liked `Tweet` when successful.
      def unlike(id : Int64) : Twitter::Tweet
        response = post("/1.1/favorites/destroy.json", {"id" => id.to_s})
        Twitter::Tweet.from_json(response)
      end
    end
  end
end
