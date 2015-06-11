class ProjectSerializer < ActiveModel::Serializer
  attribute :id
  # attribute :image

  attribute :new_name,             key: :title
  attribute :new_ShortDescription, key: :description
  attribute :new_geoexplain,       key: :location
  attribute :department_name,      key: :primary_department
  attribute :manager_name,         key: :project_manager
  attribute :new_Website,          key: :website
  attribute :status,               key: :status
  attribute :new_count,            key: :number

  def image
    object.image_small
  end

  def links
  end
end
