object @project => :data

node :type do |p|
  "projects"
end

node :id do |p|
  p.id
end

node :attributes do |p|
  { 
    title:              p.new_name,
    image:              p.send( locals.fetch(:image_method) { :image_full } ),
    description:        p.new_ShortDescription.force_encoding(Encoding::UTF_8),
    location:           p.new_geoexplain,
    primary_department: p.department_name,
    project_manager:    p.manager_name,
    website:            p.new_Website,
    status:             p.status
  }
end

node :links do |p|
  { :self => project_url(p),
    :next => project_url(p.next || Project.last),
    :prev => project_url(p.prev || Project.first) }
end