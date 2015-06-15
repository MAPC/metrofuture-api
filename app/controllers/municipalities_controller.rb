class MunicipalitiesController < ApplicationController
  def index
    metrofuture = filter.fetch(:mapc) { false }

    @munis = Municipality.metrofuture( metrofuture )
    json = JSONAPI::Serializer.serialize(@munis, include: includes, is_collection: true)
    render json: json
  end
end
