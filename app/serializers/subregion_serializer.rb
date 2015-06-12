class SubregionSerializer < ApplicationSerializer
  attribute :name do
    object.new_MAPC_Subregion
  end

  attribute :abbv do
    object.new_FullName
  end
end