class ProjectManager < ActiveRecord::Base
  self.table_name = 'OwnerBase'
  self.primary_key = 'OwnerId'
  include SimplePrimaryKey

  default_scope { where("OwnerIdType" => 8) }

  has_many :projects, foreign_key: 'OwnerId'
end
