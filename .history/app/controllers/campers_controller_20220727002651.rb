class CampersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # added rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
    campers = Camper.all
    render json: campers, serializer: CamperWithActivitiesSerializer
  end
  def show
    
  end
  def create
    campers = Camper.create!(params[:id])
    render json: campers, status: :created
  end

  def destroy
    camper = Camper.find(params[:id])
    camper.destroy
    head :no_content
  end
  private
  def render_not_found_response
    render json: { error: "Camper not found" }, status: :not_found
  end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end


end
