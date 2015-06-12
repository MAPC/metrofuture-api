class MunicipalitiesController < ApplicationController
  def index
    @munis = Municipality.all
    json = JSONAPI::Serializer.serialize(@munis, include: includes, is_collection: true)
    render json: json
  end
end
