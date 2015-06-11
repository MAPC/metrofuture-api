object @project

node :type do |object|
  object.class.downcase.underscore.pluralize
end