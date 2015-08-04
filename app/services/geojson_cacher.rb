class GeojsonCacher < BaseCacher
  def live_value
    response = begin
      HTTParty.get(geometry_base_url, timeout: 5).body
    rescue
      "{}"
    end
    json = ensure_properties JSON.parse(response)
    json.to_json
  end

  def ttl
    1.year.to_i
  end

  private

    def geometry_base_url
      "http://api.censusreporter.org/1.0/geo/tiger2013/#{@object.geoid}?geom=true"
    end

    def ensure_properties(hash)
      hash["properties"] = {} unless hash.has_key?("properties")
      hash
    end
end