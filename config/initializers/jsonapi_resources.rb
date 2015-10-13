require 'jsonapi/counting_active_record_operations_processor'

JSONAPI.configure do |config|
  # built in paginators are :none, :offset, :paged
  config.default_paginator = :paged

  config.default_page_size =  9
  config.maximum_page_size = 27

  config.operations_processor = :counting_active_record
end
