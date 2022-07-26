class ActivitiesController < ApplicationController
    def index
        activity = Activity.all
        render json: activity
    end

    def delete
        activity = Activity.find_by(params[:id])
        activity.destroy
        head: 
    end
end
