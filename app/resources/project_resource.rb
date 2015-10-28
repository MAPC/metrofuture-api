class ProjectResource < JSONAPI::Resource
  u = Rails.application.routes.url_helpers

  attributes :title,
             :description,
             :image,
             :location,
             :primary_department,
             :primary_department_short,
             :project_manager,
             :website,
             :status,
             :number,
             :geography,
             :geography_type

  has_many :municipalities
  has_many :subregions
  has_many :goals

  key_type :uuid

  # def id
  #   @model.to_param
  # end

  filters :regional

  # def image
  #   if @model.image
  #     Rails.application.routes.url_helpers.image_url(@model.image.filename)
  #   end
  # end

  def find_by_key(key, options = {})
    # _primary_key = :new_count
    # key, _, name = params[:id].partition('--')
    context = options[:context]
    records = records(options)
    records = apply_includes(records, options)
    model = records.first #.where(:new_count => 431).first
    fail JSONAPI::Exceptions::RecordNotFound.new(key) if model.nil?
    new(model, context)
  end

  def image
    styles = {}
    if @model.image
      u = Rails.application.routes.url_helpers
      styles = { small:  u.image_url(@model.image, style: 'small'),
        medium: u.image_url(@model.image, style: 'medium'),
        large:  u.image_url(@model.image, style: 'large') }
    end
    styles
  end

  custom_link :next,     ->(source, link_builder) { u.project_url(source._model.next)     if source._model.next     }
  custom_link :previous, ->(source, link_builder) { u.project_url(source._model.previous) if source._model.previous }

  def fetchable_fields
    super - [:geography_type]
  end

  def self.apply_filter(records, filter, value, options)
    case filter
    when :regional
      return records.regional
    else
      return super(records, filter, value)
    end
  end

  def self.apply_sort(records, order_options)
    if order_options.keys.include? "geography_type"
      records.sorted
    else
      records
    end
  end

  # def id
  #   @model.to_param
  # end

  def primary_department
    @model.department_name
  end

  def primary_department_short
    @model.department_short_name
  end

  def project_manager
    @model.manager.name(format: :first_last)
  end

end