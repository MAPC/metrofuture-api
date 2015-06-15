class Subregion < ActiveRecord::Base
  self.table_name  = 'new_mapcsubregionExtensionBase'
  self.primary_key = 'new_mapcsubregionId'

  alias_attribute :id, self.primary_key.to_sym

  default_scope { where.not("new_FullName" => nil) }

  has_many :municipalities, foreign_key: "new_MAPCSubregionId"
  has_many :projects, through: :municipalities
end
