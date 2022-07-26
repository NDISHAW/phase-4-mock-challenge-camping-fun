class CampersController < ApplicationController
    def index
        camper = Camper.all
        render json: camper
    end
  def create
    user = find_user
    item = user.items.create(item_params)
    render json: item, status: :created
  end

end
