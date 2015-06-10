class Department < ActiveRecord::Base
  self.table_name = 'BusinessUnitBase'
  self.primary_key = 'BusinessUnitId'
  include SimplePrimaryKey

  has_many :projects, class_name: 'Base::Project', foreign_key: 'OwningBusinessUnit'
end
