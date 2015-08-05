class ProjectManager < ActiveRecord::Base
  self.table_name = 'OwnerBase'
  self.primary_key = 'OwnerId'

  default_scope { where("OwnerIdType" => 8) }

  has_many :projects, class_name: 'Base::Project', foreign_key: 'OwnerId'
end
