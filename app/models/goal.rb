class Goal < ActiveRecord::Base
  self.table_name = 'new_mapcGoalBase'
  self.primary_key = 'new_mapcgoalId'

  has_one :extension, class_name: 'Extension::Goal', foreign_key: 'new_mapcgoalId'
  default_scope { includes(:extension) }
  def method_missing(method_name, *args, &block)
    self.extension.send(method_name)
  end

  has_and_belongs_to_many :projects,
                          class_name:              'Project',
                          join_table:              'new_new_mapcproject_goalBase',
                          foreign_key:             'new_mapcgoalid',
                          association_foreign_key: 'new_mapcprojectid'
end
