class Base::Project < ActiveRecord::Base
  self.table_name = 'new_mapcprojectBase'
  self.primary_key = 'new_mapcprojectId'

  belongs_to :project_extension, class_name: 'Project'
  belongs_to :manager, class_name: 'ProjectManager', foreign_key: 'OwnerId'
  belongs_to :lead_department, class_name: 'Department', foreign_key: 'OwningBusinessUnit'

  def method_missing(method_name, *args, &block)
    self.project_base.send(method_name, args, block)
  end
end
