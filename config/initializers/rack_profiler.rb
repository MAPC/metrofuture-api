require 'rack-mini-profiler'

Rack::MiniProfilerRails.initialize!(Rails.application)
Rack::MiniProfiler.config.enabled = true
Rack::MiniProfiler.config.pre_authorize_cb = lambda{|x| true}