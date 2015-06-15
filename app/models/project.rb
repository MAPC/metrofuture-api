class Project < ActiveRecord::Base
  self.table_name  = 'new_mapcprojectBase'
  self.primary_key = 'new_mapcprojectId'

  has_one    :image, foreign_key: 'ObjectId'
  belongs_to :manager,         class_name: 'ProjectManager', foreign_key: 'OwnerId'
  belongs_to :lead_department, class_name: 'Department',     foreign_key: 'OwningBusinessUnit'
  
  has_and_belongs_to_many :goals,
                          join_table:              'new_new_mapcproject_goalBase',
                          foreign_key:             'new_mapcprojectid',
                          association_foreign_key: 'new_mapcgoalid'
  
  has_and_belongs_to_many :municipalities,
                          join_table:              'new_new_mapcproject_municipalitiesBase',
                          foreign_key:             'new_mapcprojectid',
                          association_foreign_key: 'new_municipalitiesid'
  
  has_many :subregions, -> { uniq }, through: :municipalities

  def self.municipality(id)
    joins(:municipalities)
      .where(new_new_mapcproject_municipalitiesBase: {
               new_municipalitiesid: id
            })
  end

  def self.subregion(id)
    Subregion.find_by(id: id).projects # TODO: This is not good code.
  end

  def manager_name
    manager.try(:Name)
  end

  def department_name
    lead_department.try(:Name)
  end

  def image_data
    image.try(:data)
  end

  def image_small
    image.try(:small)
  end

  def image_full
    image.try(:full)
  end
  
  has_one :extension, class_name: 'Extension::Project', foreign_key: 'new_mapcprojectId'
  
  default_scope { includes(:extension).where("new_mapcprojectExtensionBase.new_Showonwebsite" => true).order("new_mapcprojectExtensionBase.new_count DESC") }

  def method_missing(method_name, *args, &block)
    self.extension.send(method_name)
  end
end
