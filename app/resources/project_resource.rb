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
             :number

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