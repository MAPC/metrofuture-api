class Municipality < ActiveRecord::Base
  self.table_name  = 'new_municipalitiesExtensionBase'
  self.primary_key = 'new_municipalitiesId'

  default_scope { where.not("new_TownIDMA_TownsSimplifiedMap" => nil) }

  def self.metrofuture(boolean)
    if boolean.to_b # "false" => false
      where("new_MetroFuture" => true)
    else
      all
    end
  end

  has_and_belongs_to_many :projects,
    join_table:              'new_new_mapcproject_municipalitiesBase',
    foreign_key:             'new_municipalitiesid',
    association_foreign_key: 'new_mapcprojectid'

  belongs_to :subregion, foreign_key: "new_MAPCSubregionId"
end
