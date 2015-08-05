class Municipality < ActiveRecord::Base
  self.table_name  = 'new_municipalitiesExtensionBase'
  self.primary_key = 'new_municipalitiesId'

  default_scope { where.not("new_TownIDMA_TownsSimplifiedMap" => nil) }

  def self.metrofuture(boolean)
    boolean.to_b ? where("new_MetroFuture" => true) : all
  end

  def self.mapc(boolean)
    if boolean.to_b
      where("new_RegionalPlanningAgency" => "Metropolitan Area Planning Council")
    else
      all
    end
  end

  has_and_belongs_to_many :projects,
    join_table:              'new_new_mapcproject_municipalitiesBase',
    foreign_key:             'new_municipalitiesid',
    association_foreign_key: 'new_mapcprojectid'

  belongs_to :subregion, foreign_key: "new_MAPCSubregionId"

  alias_attribute :geoid, :new_GeoID

  def project_count
    @count ||= ProjectCounter.new(self).value
  end

  def to_geojson
    @geojson ||= JSON.parse( GeojsonCacher.new(self).value )
    @geojson["properties"]["project_count"] = project_count
    @geojson
  end

end
