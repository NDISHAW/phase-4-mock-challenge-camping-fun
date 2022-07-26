class CampersController < ApplicationController
    def index
        item = find_item
        render json: item
    end
end
