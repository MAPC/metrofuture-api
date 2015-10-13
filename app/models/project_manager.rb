class ProjectManager < ActiveRecord::Base
  self.table_name = 'OwnerBase'
  self.primary_key = 'OwnerId'

  default_scope { where("OwnerIdType" => 8) }

  has_many :projects, class_name: 'Base::Project', foreign_key: 'OwnerId'

  alias_attribute :base_name, :Name

  def name(options={})
    order = options.fetch(:format) { :first_last }
    self.send(order)
  end

  private
    TOKEN = ","

    def name_array
      if base_name.include? TOKEN
        ary = base_name.partition(TOKEN).map(&:strip)
        [ary.last, ary.first]
      else
        ary = base_name.partition(" ")
        [ary.first, ary.last]
      end
    end

    def first_last
      first, last = name_array
      "#{first} #{last}"
    end

    def last_first
      first, last = name_array
      "#{last}, #{first}"
    end

end
