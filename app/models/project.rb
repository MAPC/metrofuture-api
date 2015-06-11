class Project < ActiveRecord::Base
  self.table_name = 'new_mapcprojectBase'
  self.primary_key = 'new_mapcprojectId'

  has_one    :image, foreign_key: 'ObjectId'
  belongs_to :manager,         class_name: 'ProjectManager', foreign_key: 'OwnerId'
  belongs_to :lead_department, class_name: 'Department',     foreign_key: 'OwningBusinessUnit'

  def manager_name
    manager.try(:Name)
  end

  def department_name
    lead_department.try(:Name)
  end
  
  has_one :extension, class_name: 'Extension::Project', foreign_key: 'new_mapcprojectId'
  
  default_scope { includes(:extension).where("new_mapcprojectExtensionBase.new_Showonwebsite" => true).order("new_mapcprojectExtensionBase.new_count DESC") }

  def method_missing(method_name, *args, &block)
    self.extension.send(method_name)
  end
end
