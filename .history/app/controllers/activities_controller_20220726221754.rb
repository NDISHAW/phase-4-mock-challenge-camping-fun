class ActivitiesController < ApplicationController
    def index
        activity = Activity.all
        render json: activity
    end

    
end
