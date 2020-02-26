module Twitter
  module REST
    module Geo
      def location(place_id : String)
        response = get("/1.1/geo/id/#{place_id}.json")

        Twitter::Location.from_json(response)
      end
    end
  end
end
