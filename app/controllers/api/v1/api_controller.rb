module API
  module V1
    class APIController < JSONAPI::ResourceController
      before_action do
        Rack::MiniProfiler.authorize_request
      end
    end
  end
end
