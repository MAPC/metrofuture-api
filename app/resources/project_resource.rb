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
             :geography_type, :previous, :next

  key_type :uuid

  filters :regional

  custom_link :next,     :custom, with: ->(i) { u.project_url(i.next)     if i.next }
  custom_link :previous, :custom, with: ->(i) { u.project_url(i.previous) if i.previous }

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

  def image
    @model.image.try :url
  end

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