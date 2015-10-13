class MunicipalityResource < JSONAPI::Resource

  attributes :name,
             :project_count,
             :mapc,
             :metrofuture,
             :geojson,
             :geoid

  has_many :projects
  key_type :uuid

  def geojson
    @model.to_geojson
  end

  def mapc
    @model.mapc?
  end

  def metrofuture
    @model.metrofuture?
  end

  filters :mapc

  def self.apply_filter(records, filter, value, options)
    case filter
    when :mapc
      boolean = value.first
      return records.mapc(boolean)
    else
      return super(records, filter, value)
    end
  end

end
