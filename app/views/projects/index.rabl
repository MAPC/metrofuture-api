helper ApiHelper

object false
node(:links) do
  paginatify @projects
end

child(@projects, root: "data") do |projects|
  extends('projects/show', locals: { image_method: :image_small })
end