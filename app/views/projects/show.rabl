# object @project => :data

object false

child(@project, root: "data") do |p|
  node :type do |p|
    "projects"
  end
  node :id do |p|
    p.id
  end
  node :attributes do |p|
    { 
      title:              p.new_name,
      # image:              p.send( locals.fetch(:image_method) { :image_full } ),
      description:        p.new_ShortDescription.force_encoding(Encoding::UTF_8),
      location:           p.new_geoexplain,
      primary_department: p.department_name,
      project_manager:    p.manager_name,
      website:            p.new_Website,
      status:             p.status,
      number:             p.new_count
    }
  end

  node :links do |p|
    {
      :self => project_url(p),
      :next => p.next ? project_url(p.next) : nil,
      :prev => p.prev ? project_url(p.prev) : nil
    }
  end

  if params[:include] && params[:include] =~ /goal/i
    child :relationships do
      child :goals do |p|
        node :links do |p|
          { 
            hello: p,
            :self => project_relationship_url(:goals, p),
            related: goals_project_url(p)
          }
        end
        child @project.goals, root: :data, object_root: false do |g|
          node :type do |g|
            "goals"
          end
          node :id do |g|
            g.id
          end
        end
      end
    end
  end

end

# Eventually, we'll split the include param results by ','
# have a show view for each type, and iterate through and
# render each partial.
if params[:include] && params[:include] =~ /goal/i
  child @project.goals, root: :goals, object_root: false do
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