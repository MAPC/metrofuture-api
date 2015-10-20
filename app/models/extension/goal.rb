class Extension::Goal < ActiveRecord::Base
  self.table_name = 'new_mapcGoalExtensionBase'
  self.primary_key = 'new_mapcgoalId'
  has_one :base, class_name: 'Goal', foreign_key: 'new_mapcgoalId'

  alias_attribute :number, :new_Number

  alias_attribute :name, :new_name
  alias_attribute :title,       :name
  alias_attribute :description, :name
end
