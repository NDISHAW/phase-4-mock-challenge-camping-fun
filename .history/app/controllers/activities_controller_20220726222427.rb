class ActivitiesController < ApplicationController
    def index
        activity = Activity.all
        render json: activity, include: :
    end

    def delete
        activity = Activity.find_by(id: params[:id])
        activity.destroy
        # head: :no_content
    end
end
