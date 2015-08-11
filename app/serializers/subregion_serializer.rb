class SubregionSerializer < ApplicationSerializer

  def id
    object.to_param.to_s
  end

  attribute :name do
    object.new_FullName
  end

  attribute :abbv do
    object.new_MAPC_Subregion
  end

  attribute :project_count do
    object.project_count
  end

  attribute :geojson do
    object.to_geojson
  end
end