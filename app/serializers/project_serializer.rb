class ProjectSerializer < ApplicationSerializer
  has_many :goals
  has_many :municipalities
  has_many :subregions

  def id
    object.to_param.to_s
  end

  attribute :image do
    if context[:is_collection]
      object.image_url(:small)
    else
      object.image_url(:large)
    end
  end

  attribute :title do
    object.new_name
  end

  attribute :description do
    object.new_ShortDescription
  end

  attribute :location do
    object.new_geoexplain
  end

  attribute :primary_department do
    object.department_name
  end

  attribute :primary_department_short do
    object.department_short_name
  end

  attribute :project_manager do
    object.manager_name
  end

  attribute :website do
    object.new_Website
  end

  attribute :status do
    object.status
  end

  attribute :number do
    object.new_count
  end

  def links
    {
      :self => "/#{type}/#{object.to_param}",
      :next => object.next ? "/#{type}/#{object.next.to_param}" : nil,
      :prev => object.prev ? "/#{type}/#{object.prev.to_param}" : nil
    }
  end
end