class API::V1::ProjectsController < API::V1::APIController
  def show
    expires_in 30.days, public: true
    super
  end
  def index
    expires_in 30.days, public: true
    super
  end
end
