class ApplicationController < ActionController::API

  def includes
    params[:include] ? ( params[:include].split(',') ) : []
  end
  
  def page_number
    params[:page] ? ( params[:page][:number] || 1 ) : 1
  end
  
  def per_page
    params[:page] ? ( params[:page][:size]   || Kaminari.config.default_per_page ) : Kaminari.config.default_per_page
  end


  def filter
    params.fetch(:filter) { {} }
  end


  # Convenience methods for serializing models
  def serialize_model(model, options = {})
    options[:is_collection] = false
    options[:includes] = includes
    JSONAPI::Serializer.serialize(model, options)
  end

  def serialize_models(models, options = {})
    options[:is_collection] = true
    options[:includes] = includes
    JSONAPI::Serializer.serialize(models, options)
  end
end
