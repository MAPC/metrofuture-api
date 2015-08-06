class Subregion < ActiveRecord::Base
  self.table_name  = 'new_mapcsubregionExtensionBase'
  self.primary_key = 'new_mapcsubregionId'

  alias_attribute :name, :new_FullName
  alias_attribute :abbv, :new_MAPC_Subregion

  default_scope {
    where.not("new_MAPC_Subregion" => "Not applicable")
      .where.not("new_MAPC_Subregion" => "All subregions")
  }

  def self.simple(boolean=true)
    boolean.to_b ? where("new_Organization" => nil) : all
  end

  has_many :municipalities, foreign_key: "new_MAPCSubregionId"
  has_many :projects, through: :municipalities

  def project_count
    @count ||= ProjectCounter.new(self).value
  end

  def to_geojson
    @geojson ||= JSON.parse( SubregionGeojsonCacher.new(self).value )
    props = @geojson["properties"]
    props["id"] = id
    props["project_count"] = project_count
    props["simple_name"] = name
    @geojson
  end
end
