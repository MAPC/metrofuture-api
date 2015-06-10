class ProjectSerializer < ApplicationSerializer
  schema do
    type "project"
    link :self, context[:controller].project_url(item)
    link :first, context[:controller].project_url(item.class.first)
    link :last, context[:controller].project_url(item.class.last)
    link :next, project_url_or_null(item.next)
    link :prev, project_url_or_null(item.prev)

    properties do |p|
      p.title              item.new_name
      p.image              item.image_small
      p.description        item.new_ShortDescription.force_encoding(Encoding::UTF_8)
      p.location           item.new_geoexplain
      p.primary_department item.department_name
      p.project_manager    item.manager_name
      p.website            item.new_Website
      p.status             item.status
    end
  end

  protected

    def project_url_or_null(object)
      context[:controller].project_url(object) if object
    end
end