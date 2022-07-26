class ActivitiesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # added rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        activity = Activity.all
        render json: activity, include: :campers
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content
    end
end


  def create
    activities = Activities.create!(params[:id])
    render json: activities, status: :created
  end

  def destroy
    Activities = Activitie.find(params[:id])
    Activities.destroy
    head :no_content
  end
  private
  def render_not_found_response
    render json: { error: "Activities not found" }, status: :not_found
  end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end