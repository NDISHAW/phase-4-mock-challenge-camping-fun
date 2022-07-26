class ActivitiesController < ApplicationController
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
