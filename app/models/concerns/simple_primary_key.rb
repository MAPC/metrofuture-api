module SimplePrimaryKey
  extend ActiveSupport::Concern

  def self.included(klass)
    klass.instance_eval do
      alias_attribute :id, klass.primary_key
    end
  end
  
end