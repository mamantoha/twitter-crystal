require "json"
require "../user"

module Twitter
  module REST
    module FriendsAndFollowers
      def follow(user_id : Int32 | Int64, options = {} of String => String) : Twitter::User
        response = post("/1.1/friendships/create.json", options.merge({"user_id" => user_id.to_s}))
        Twitter::User.from_json(response)
      end

      def follow(screen_name : String, options = {} of String => String) : Twitter::User
        response = post("/1.1/friendships/create.json", options.merge({"screen_name" => screen_name}))
        Twitter::User.from_json(response)
      end

      def follow(user : Twitter::User, options = {} of String => String) : Twitter::User
        follow(user.id, options)
      end

      def unfollow(user_id : Int32 | Int64, options = {} of String => String) : Twitter::User
        response = post("/1.1/friendships/destroy.json", options.merge({"user_id" => user_id.to_s}))
        Twitter::User.from_json(response)
      end

      def unfollow(screen_name : String, options = {} of String => String) : Twitter::User
        response = post("/1.1/friendships/destroy.json", options.merge({"screen_name" => screen_name}))
        Twitter::User.from_json(response)
      end

      def unfollow(user : Twitter::User, options = {} of String => String) : Twitter::User
        unfollow(user.id, options)
      end

      def friend_ids(options = {} of String => String) : Array(Int64)
        response = get("/1.1/friends/ids.json", options)
        JSON.parse(response)["ids"].as_a.map(&.as_i64)
      end

      def friends(options = {} of String => String) : Array(Twitter::User)
        response = get("/1.1/friends/list.json", options)
        Array(Twitter::User).from_json(JSON.parse(response)["users"].to_json)
      end

      def friends(screen_name : String, options = {} of String => String) : Array(Twitter::User)
        friends(options.merge({"screen_name" => screen_name}))
      end

      def friends(user_id : Int32 | Int64, options = {} of String => String) : Array(Twitter::User)
        friends(options.merge({"user_id" => user_id.to_s}))
      end

      def friends(user : Twitter::User | Int64, options = {} of String => String) : Array(Twitter::User)
        friends(user.id, options)
      end

      def follower_ids(options = {} of String => String) : Array(Int64)
        response = get("/1.1/followers/ids.json", options)
        JSON.parse(response)["ids"].as_a.map(&.as_i64)
      end

      def followers(options = {} of String => String) : Array(Twitter::User)
        response = get("/1.1/followers/list.json", options)
        Array(Twitter::User).from_json(JSON.parse(response)["users"].to_json)
      end

      def followers(screen_name : String, options = {} of String => String) : Array(Twitter::User)
        followers(options.merge({"screen_name" => screen_name}))
      end

      def followers(user_id : Int32 | Int64, options = {} of String => String) : Array(Twitter::User)
        followers(options.merge({"user_id" => user_id.to_s}))
      end

      def followers(user : Twitter::User, options = {} of String => String) : Array(Twitter::User)
        followers(user.id, options)
      end
    end
  end
end
