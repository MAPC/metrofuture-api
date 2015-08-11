class MunicipalitySerializer < ApplicationSerializer
  def id
    object.to_param.to_s
  end

  attribute :muni_id do
    object.new_TownIDMA_TownsSimplifiedMap
  end

  attribute :name do
    object.new_name
  end

  attribute :prefix do
    object.new_Prefix
  end

  attribute :county do
    object.new_County
  end

  attribute :community_type do
    object.new_Communitytype
  end

  attribute :rpa do
    object.new_RegionalPlanningAgency
  end

  attribute :project_count do
    object.project_count
  end

  attribute :geojson do
    object.to_geojson
  end
end