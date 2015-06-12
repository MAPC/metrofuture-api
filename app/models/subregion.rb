class Subregion < ActiveRecord::Base
  self.table_name  = 'new_mapcsubregionExtensionBase'
  self.primary_key = 'new_mapcsubregionId'  

  default_scope { where.not("new_FullName" => nil) }
end
