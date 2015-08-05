class MunicipalitiesController < ApplicationController
  def index
    mapc = filter.fetch(:mapc) { false }

    @munis = Municipality.mapc( mapc )
    json = JSONAPI::Serializer.serialize(@munis, include: includes, is_collection: true)
    render json: json
  end
end
