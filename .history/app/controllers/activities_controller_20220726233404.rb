class ActivitiesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # added rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        activity = Activity.all
        render json: activity, include: :campers
    end
    def create
        activities = Activities.create!(params[:id])
        render json: activities, status: :created
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
