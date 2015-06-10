class Project < ActiveRecord::Base
  self.table_name = 'new_mapcprojectExtensionBase'
  self.primary_key = 'new_mapcprojectId'
  include SimplePrimaryKey

  has_one :image, foreign_key: 'ObjectId'
  belongs_to :manager, class_name: 'ProjectManager', foreign_key: 'OwnerId'
  has_one :lead_department, class_name: 'Department', foreign_key: 'OwningBusinessUnit'

  alias_attribute :title,   'new_name'
  alias_attribute :visible, 'new_Showonwebsite'
  alias_attribute :public,  :visible

  default_scope { where('new_Showonwebsite' => true).order('new_mapcprojectId') }

  STATUS = {  100000001 => 'In Progress',
              100000002 => 'Completed', 
              100000003 => 'In Development'  }

  def status
    STATUS.fetch(new_ProjectStatus) { nil }
  end

  def public?
    visible
  end

  def image_data
    image.try(:data)
  end

  def next # TODO base these off the ProjectBase ID, not the UUID.
    Project.where("'new_mapcprojectId' > ?", new_mapcprojectId).first
  end

  def prev
    Project.where("'new_mapcprojectId' < ?", new_mapcprojectId).last
  end

end
