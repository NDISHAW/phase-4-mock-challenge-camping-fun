class CampersController < ApplicationController
    def index
        camper = Camper.all
        render json: camper
    end
  def create
    camper = Camper.find_by(id: params[:id])
    item = camper.items.create(item_params)
    render json: camper, status: :created
  end

end
