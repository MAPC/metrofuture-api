class Project < ActiveRecord::Base
  self.table_name = 'new_mapcprojectBase'
  self.primary_key = 'new_mapcprojectId'

  belongs_to :manager, class_name: 'ProjectManager', foreign_key: 'OwnerId'
  belongs_to :lead_department, class_name: 'Department', foreign_key: 'OwningBusinessUnit'

  has_one :extension, class_name: 'Extension::Project', foreign_key: 'new_mapcprojectId'
  
  default_scope { includes(:extension).where("new_mapcprojectExtensionBase.new_Showonwebsite" => true) }

  def method_missing(method_name, *args, &block)
    self.extension.send(method_name)
  end
end
