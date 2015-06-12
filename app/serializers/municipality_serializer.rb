class MunicipalitySerializer < ApplicationSerializer
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
end