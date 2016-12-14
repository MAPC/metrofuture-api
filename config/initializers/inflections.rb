ActiveSupport::Inflector.inflections(:en) do |inflect|
  %w( API CSV PDF ).each { |word| inflect.acronym word }
end
