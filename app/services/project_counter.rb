class ProjectCounter < BaseCacher
  def live_value
    @object.projects.count
  end

  def ttl
    1.week.to_i
  end

  def converter
    :to_i
  end
end