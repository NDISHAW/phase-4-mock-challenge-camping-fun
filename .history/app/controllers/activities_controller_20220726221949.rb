class ActivitiesController < ApplicationController
    def index
        activity = Activity.all
        render json: activity
    end

    def delete
        activity 
    end
end
