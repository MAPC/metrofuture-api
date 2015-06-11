class GoalSerializer < ApplicationSerializer
  attribute :number do
    object.new_Number
  end
  attribute :body do
    object.new_name.split('. ').last << '.'
  end
end