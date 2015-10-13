class ProjectResource < JSONAPI::Resource

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

  filters :sorted

  def fetchable_fields
    super - [:geography_type]
  end

  def self.apply_sort(records, order_options)
    if order_options.keys.include? "geography_type"
      records.sorted
    else
      records
    end
  end

  def next
    "http://localhost:5000/projects/#{@model.next}" if @model.next
  end

  def previous
    "http://localhost:5000/projects/#{@model.prev}" if @model.prev
  end
  # custom_link :next,     :custom, with: ->(instance) { instance.next     }
  # custom_link :previous, :custom, with: ->(instance) { instance.previous }


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