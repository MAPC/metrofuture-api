class SubregionResource < JSONAPI::Resource
  attributes :name, :abbv, :geojson
  has_many :projects

  def geojson
    @model.to_geojson
  end

  filters :simple
  key_type :uuid

  def self.apply_filter(records, filter, value, options)
    case filter
    when :simple
      boolean = value.first
      return records.simple(boolean)
    else
      return super(records, filter, value)
    end
  end
end
