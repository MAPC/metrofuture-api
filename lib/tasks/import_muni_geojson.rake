namespace :geojson do

  desc "Permanently load municipal GeoJSON into the cache."
  task munis: :environment do

    @fixtures = YAML.load_file('db/fixtures/municipalities.yml')
    NULL_GEOJSON = { "geojson" => "{}" }

    @fixtures['municipalities'].each_pair do |id, attrs|
      @object = Municipality.find(id)
      geojson = attrs.fetch("geojson") { NULL_GEOJSON }

      # Clear the GeoJSON cache
      c = GeojsonCacher.new(@object)
      c.expire!

      # Set the GeoJSON
      # TODO This should be factored into #set and #get
      # methods in BaseCacher.
      c.cache.hset( c.hash_key, c.hash_field, geojson )
      c.cache.set c.ttl_key, 5.years.to_i.seconds.from_now
    end

  end
end