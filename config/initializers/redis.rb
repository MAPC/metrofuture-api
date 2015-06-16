module ImageCache
  REDIS_URL = ENV["REDISCLOUD_URL"] || ENV["REDIS_URL"] || 'redis://127.0.0.1:6379'
  class << self
    def redis
      @redis ||= Redis.new(url: REDIS_URL)
    end
  end
end
