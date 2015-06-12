class SubregionsController < ApplicationController
  def index
    @subregions = Subregion.all
    json = JSONAPI::Serializer.serialize(@subregions, include: includes, is_collection: true)
    render json: json
  end
end
