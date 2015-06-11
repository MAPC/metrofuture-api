class Extension::Goal < ActiveRecord::Base
  self.table_name = 'new_mapcGoalExtensionBase'
  self.primary_key = 'new_mapcgoalId'
  has_one :base, class_name: 'Goal', foreign_key: 'new_mapcgoalId'
end
