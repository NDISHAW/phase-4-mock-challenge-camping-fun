class ActivitiesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        activity = Activity.all
        render json: activity
    end
    def create
        activities = Activities.create!(params[:id])
        render json: activities, status: :created
    end
    def destroy
        activity = Activity.find_by(params[:id])
        activity.destroy
        head :no_content

    end
    private
    def render_not_found_response
        render json: { error: "Activities not found" }, status: :not_found
    end

end


#   def create
#     activities = Activities.create!(params[:id])
#     render json: activities, status: :created
#   end

#   def destroy
#     Activities = Activitie.find(params[:id])
#     Activities.destroy
#     head :no_content
#   end
