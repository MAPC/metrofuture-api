class SubregionsController < ApplicationController
  def index
    simple = filter.fetch(:simple) { false }
    @subregions = Subregion.simple( simple )
    json = JSONAPI::Serializer.serialize(@subregions, include: includes, is_collection: true)
    render json: json
  end
end
