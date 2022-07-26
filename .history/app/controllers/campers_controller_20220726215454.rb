class CampersController < ApplicationController
      def show
    item = find_item
    render json: item
  end
end
