class Extension::Project < ActiveRecord::Base
  self.table_name = 'new_mapcprojectExtensionBase'
  self.primary_key = 'new_mapcprojectId'
  include SimplePrimaryKey

  belongs_to :base, class_name: 'Project', foreign_key: 'new_mapcprojectId'

  alias_attribute :title,   'new_name'
  alias_attribute :visible, 'new_Showonwebsite'
  alias_attribute :public,  :visible

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

  def image_small
    image.try(:small)
  end

  def image_full
    image.try(:full)
  end

  def next
    # Looks up all the IDs, gets the next ID in the list
    # and uses that to look up the object.
    ids = Project.pluck(:new_count)
    id  = ids[ ids.index(self.new_count) + 1 ]
    Project.where("new_mapcprojectExtensionBase.new_count = ?", id.to_s).first
  end

  def prev
    ids = Project.pluck(:new_count).reverse!
    id  = ids[ ids.index(self.new_count) + 1 ]
    Project.where("new_mapcprojectExtensionBase.new_count = ?", id.to_s).first
  end
end
