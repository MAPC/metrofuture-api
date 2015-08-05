class Department < ActiveRecord::Base
  self.table_name = 'BusinessUnitBase'
  self.primary_key = 'BusinessUnitId'

  has_many :projects, class_name: 'Project', foreign_key: 'OwningBusinessUnit'
end
