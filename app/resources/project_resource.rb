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
             :geography_type,
             :next, :previous

  key_type :uuid

  filters :regional

  # def image
  #   if @model.image
  #     Rails.application.routes.url_helpers.image_url(@model.image.filename)
  #   end
  # end

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

  custom_link :next,     :custom, with: ->(i) { u.project_url(i.next)     if i.next }
  custom_link :previous, :custom, with: ->(i) { u.project_url(i.previous) if i.previous }

  def fetchable_fields
    super - [:geography_type, :next, :previous]
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