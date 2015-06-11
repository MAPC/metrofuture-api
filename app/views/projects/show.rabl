# object @project => :data

child(@project, root: :data, object_root: false) do |project|

  # partial("projects/_project", object: @project)
  attributes :id
  node :type do |object|
    object.class.to_s.downcase.underscore.pluralize
  end

  node :attributes do |project|
    { 
      title:              project.new_name,
      # image:            project.send( locals.fetch(:image_method) { :image_full } ),
      description:        project.new_ShortDescription.force_encoding(Encoding::UTF_8),
      location:           project.new_geoexplain,
      primary_department: project.department_name,
      project_manager:    project.manager_name,
      website:            project.new_Website,
      status:             project.status,
      number:             project.new_count
    }
  end

  # node :links, root: false do |project|
  #   partial("projects/_links", object: project)
  # end
  node :links do |project|
    {
     :self => project_url(project),
     :next => project.next ? project_url(project.next) : nil,
     :prev => project.prev ? project_url(project.prev) : nil
    }
  end

  node :relationships do |project|
    node :goals do |project|
      child(@project.goals, root: :data) do |goal|
        partial("goals/_goal", object: goal)
      end
      { 
        links: {
          :self => project_relationship_url(:goals, project_id: project),
          related: goals_project_url(project)
        }
      }
    end
  end
end

  # Eventually, we'll split the include param results by ','
  # have a show view for each type, and iterate through and
  # render each partial.
if params[:include] && params[:include] =~ /goal/i
  child @project.goals, root: :included, object_root: false do
    node :type do |g|
      "goals"
    end
    node :id do |g|
      g.id
    end
    node :attributes do |g|
      { 
        goal_id: g.new_Number,
        body:    g.new_name.split('. ').last << '.'
       }
    end
  end
end