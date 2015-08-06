class SubregionGeojsonCacher < BaseCacher

  NULL_GEOJSON = { "geojson" => "{} "}

  def live_value
    @fixtures ||= YAML.load_file('db/fixtures/subregions.yml')
    subregion = @fixtures['subregions'].fetch(@object.id) {
      NULL_GEOJSON # Compound subregions have no GeoJSON
    }
    geojson = subregion["geojson"]
    json = ensure_properties JSON.parse(geojson)
    json.to_json
  end

  def ttl
    1.year.to_i
  end

  private

    def ensure_properties(hash)
      hash["properties"] = {} unless hash.has_key?("properties")
      hash
    end
end