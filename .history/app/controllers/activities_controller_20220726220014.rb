class ActivitiesController < ApplicationController
    def index
        activity = A.all
        render json: activity
    end
end
