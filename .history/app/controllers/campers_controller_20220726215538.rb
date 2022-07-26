class CampersController < ApplicationController
    def index
        camper = find_item
        render json: item
    end
end
