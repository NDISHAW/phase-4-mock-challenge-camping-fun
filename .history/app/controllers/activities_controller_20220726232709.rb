class ActivitiesController < ApplicationController
    def index
        activity = Activity.all
        render json: activity, include: :campers
    end

    def delete
        activity = Activity.find_by(params[:id])
        activity.destroy
        head: :no_content
    end
end
