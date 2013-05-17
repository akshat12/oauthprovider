class Api::V1::DataController < Api::V1::BaseController

  def show
    respond_with ({:super_secret => "oauth_data"})
  end

  def index
  	@users = users.all
  	format.json {render json: @users }
  end


end
