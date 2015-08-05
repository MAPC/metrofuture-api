class Subregion < ActiveRecord::Base
  self.table_name  = 'new_mapcsubregionExtensionBase'
  self.primary_key = 'new_mapcsubregionId'

  alias_attribute :name, :new_FullName

  default_scope { where.not("new_FullName" => nil) }

  has_many :municipalities, foreign_key: "new_MAPCSubregionId"
  has_many :projects, through: :municipalities

  def project_count
    @count ||= ProjectCounter.new(self).value
  end

  def to_geojson
    @geojson ||= JSON.parse( SubregionGeojsonCacher.new(self).value )
    @geojson["properties"]["project_count"] = project_count
    @geojson
  end
end
