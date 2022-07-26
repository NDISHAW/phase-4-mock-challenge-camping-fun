class CampersController < ApplicationController
    def index
        camper = Camper.all
        render json: item
    end
end
