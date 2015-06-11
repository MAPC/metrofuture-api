object @project

node :links do |project|
  {
   :self => project_url(project),
   :next => project.next ? project_url(project.next) : nil,
   :prev => project.prev ? project_url(project.prev) : nil
  }
end
