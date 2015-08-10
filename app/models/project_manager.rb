class ProjectManager < ActiveRecord::Base
  self.table_name = 'OwnerBase'
  self.primary_key = 'OwnerId'

  default_scope { where("OwnerIdType" => 8) }

  has_many :projects, class_name: 'Base::Project', foreign_key: 'OwnerId'

  alias_attribute :base_name, :Name

  def name(options={})
    order = options.fetch(:format) { :first_last }
    if [:first_last, :last_first].include? order
      self.send(order)
    else
      first_last
    end
  end

  def first_last
    "#{name_array.first} #{name_array.last}"
  end

  def last_first
    "#{name_array.last}, #{name_array.first}"
  end

  private
    TOKEN = ","

    def name_array
      if base_name.include? TOKEN
        base_name.split(TOKEN).reverse.map(&:strip)
      else
        base_name.split(" ")
      end
    end
end
