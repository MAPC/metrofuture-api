class Municipality < ActiveRecord::Base
  self.table_name  = 'new_municipalitiesExtensionBase'
  self.primary_key = 'new_municipalitiesId'

  TIMEOUT = 3 # seconds
  PROJECT_COUNT_TTL = 1.week.to_i

  default_scope { where.not("new_TownIDMA_TownsSimplifiedMap" => nil) }

  # TODO make ternary
  def self.metrofuture(boolean)
    if boolean.to_b # "false" => false
      where("new_MetroFuture" => true)
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

  def to_geojson
    geojson = retrieve_cached_geojson || retrieve_and_cache_geojson
    geojson["properties"]["project_count"] = self.project_count.to_i
    geojson
  end

  def project_count
    # If the project count hasn't expired, get and/or set it
    count = 0
    if DataCache.get count_ttl_key
      count = DataCache.hget(:project_count, id) || set_cached_project_count
    else # if the cache has expired, set and delay it
      count = set_cached_project_count
      set_cache_value_and_expiration
    end
    count.to_i
  end

  def count_ttl_key
    "project_count_lock_#{id}"
  end

  private

    # Project Count

    def set_cached_project_count
      count = self.projects.count
      DataCache.hset :project_count, id, count
      count
    end

    def set_cache_value_and_expiration
      DataCache.set    count_ttl_key, "#{PROJECT_COUNT_TTL.seconds.from_now}"
      DataCache.expire count_ttl_key, PROJECT_COUNT_TTL
    end

    # GeoJSON

    def retrieve_cached_geojson
      geojson = DataCache.hget(:geojson, geoid)
      geojson ? JSON.parse(geojson) : false
    end

    def retrieve_and_cache_geojson
      response = retrieve_geojson
      geojson  = ensure_properties( JSON.parse(response) )
      DataCache.hset :geojson, geoid, response unless geojson.empty?
      geojson
    end

    def retrieve_geojson
      begin
        HTTParty.get(geometry_base_url, timeout: TIMEOUT).body
      rescue
        "{}"
      end
    end

    def ensure_properties(geojson)
      geojson["properties"] = {} unless geojson.has_key?("properties")
      geojson
    end

    def geometry_base_url
      "http://api.censusreporter.org/1.0/geo/tiger2013/#{geoid}?geom=true"
    end


end
