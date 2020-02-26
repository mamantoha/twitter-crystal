module Twitter
  module REST
    module Timelines
      def home_timeline(options = {} of String => String) : Array(Twitter::Tweet)
        response = get("/1.1/statuses/home_timeline.json", options)
        Array(Twitter::Tweet).from_json(response)
      end

      def mentions_timeline(options = {} of String => String) : Array(Twitter::Tweet)
        response = get("/1.1/statuses/mentions_timeline.json", options)
        Array(Twitter::Tweet).from_json(response)
      end

      def retweets_of_me(options = {} of String => String) : Array(Twitter::Tweet)
        response = get("/1.1/statuses/retweets_of_me.json", options)
        Array(Twitter::Tweet).from_json(response)
      end

      def user_timeline(user_id : Int32 | Int64, options = {} of String => String) : Array(Twitter::Tweet)
        response = get("/1.1/statuses/user_timeline.json", options.merge({"user_id" => user_id.to_s}))
        Array(Twitter::Tweet).from_json(response)
      end

      def user_timeline(screen_name : String, options = {} of String => String) : Array(Twitter::Tweet)
        response = get("/1.1/statuses/user_timeline.json", options.merge({"screen_name" => screen_name}))
        Array(Twitter::Tweet).from_json(response)
      end
    end
  end
end
