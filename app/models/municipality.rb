class Municipality < ActiveRecord::Base
  self.table_name  = 'new_municipalitiesExtensionBase'
  self.primary_key = 'new_municipalitiesId'

  NO_SUBREGION = "388657F1-A069-E311-8EB6-96147297305B"

  default_scope { where.not("new_TownIDMA_TownsSimplifiedMap" => nil) }

  def self.metrofuture(boolean)
    boolean.to_b ? where("new_MetroFuture" => true) : all
  end

  def self.mapc(boolean)
    if boolean.to_b
      # ID of the "Not applicable" subregion
      where.not("new_MAPCSubregionID" => NO_SUBREGION)
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
  alias_attribute :name,  :new_name

  def to_param
    "#{name.parameterize}--#{id}"
  end

  def metrofuture?
    new_MetroFuture
  end

  def mapc?
    !subregion.nil?
  end

  def project_count
    @count ||= ProjectCounter.new(self).value
  end

  def to_geojson
    @geojson ||= JSON.parse( GeojsonCacher.new(self).value )
    props = @geojson["properties"]
    props["id"] = id
    props["project_count"] = project_count
    props["simple_name"] = name
    @geojson
  end

end
