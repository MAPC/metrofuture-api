class Extension::Project < ActiveRecord::Base
  self.table_name  = 'new_mapcprojectExtensionBase'
  self.primary_key = 'new_mapcprojectId'

  belongs_to :base, class_name: 'Project', foreign_key: 'new_mapcprojectId'

  alias_attribute :title,   'new_name'
  alias_attribute :visible, 'new_Showonwebsite'
  alias_attribute :public,  :visible
  alias_attribute :description, :new_ShortDescription
  alias_attribute :city,    :new_LocationCity
  alias_attribute :state,   :new_LocationState
  alias_attribute :website, :new_Website
  alias_attribute :number,  :new_count

  def location
    "#{city} #{state}"
  end

  STATUS = {
    100000000 => 'Proposed',
    100000001 => 'In Progress',
    100000002 => 'Completed',
    100000003 => 'In Development'
  }

  def status
    STATUS.fetch(new_ProjectStatus) { nil }
  end

  GEOGRAPHY = {
    100000001 => 'Single Municipality',
    100000000 => 'Multiple Municipalities',
    100000002 => 'MAPC Region-Wide',
    100000003 => 'Internally Focused',
    100000004 => 'State-Wide'
  }

  def geography
    GEOGRAPHY.fetch(new_MunicipalitiesType) { nil }
  end

  def public?
    visible
  end
end
