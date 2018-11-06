module Appboy
  module REST
    class DeleteUsers < Base
      attr_reader :api_key, :external_ids, :appboy_ids

      def initialize(api_key, external_ids: [], appboy_ids: [])
        @api_key = api_key
        @external_ids = external_ids
        @appboy_ids   = appboy_ids
      end

      def perform
        http.post '/users/delete', {
          api_key:   api_key,
          external_ids:   external_ids,
          appboy_ids:     appboy_ids
        }
      end
    end
  end
end
