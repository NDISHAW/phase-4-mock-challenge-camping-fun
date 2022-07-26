class CampersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  def show
    camper = Camper.find_by(id: params[:id])
    render json: camper
  end

  def index
    campers = Camper.all
    render json: campers
  end


  private
  def render_not_found_response(exception)
    render json: { error: "#{exception.model} not found" }, status: :not_found
  end


end
