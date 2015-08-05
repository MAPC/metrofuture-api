class Subregion < ActiveRecord::Base
  self.table_name  = 'new_mapcsubregionExtensionBase'
  self.primary_key = 'new_mapcsubregionId'

  alias_attribute :id, self.primary_key.to_sym

  default_scope { where.not("new_FullName" => nil) }

  has_many :municipalities, foreign_key: "new_MAPCSubregionId"
  has_many :projects, through: :municipalities

  def project_count
    @count ||= ProjectCounter.new(self).value
  end

  def to_geojson
    json_string = DataCache.hget(:geojson, id) || Subregion.null_geojson
    @geojson ||= JSON.parse( json_string )
    # @geojson ||= JSON.parse( GeojsonCacher.new(self).value )
    @geojson["properties"]["project_count"] = project_count
    @geojson
  end

  def self.null_geojson
    { geometry: {
        type: "Polygon",
        coordinates: [
          [-71.002354, 42.127224],
          [-70.940692, 42.151312],
          [-70.93148699999999, 42.116549],
          [-71.002354, 42.127224]
        ]
      },
    properties: {} }.to_json
  end

end
