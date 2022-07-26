class ActivitiesController < ApplicationController
    def index
        activity = Camper.all
        render json: activity
    end
end
