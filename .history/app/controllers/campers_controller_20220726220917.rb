class CampersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    if params[:Camper_id]
      user = find_camper
      items = user.items
    else
      items = Item.all
    end
    render json: items, include: :user
  end

  def show
    item = find_item
    render json: item
  end

  def create
    user = find_camper
    item = user.items.create(item_params)
    render json: item, status: :created
  end

  private
  def find_item
    Item.find(params[:id])
  end

  def find_camper
    Camper.find(params[:Camper_id])
  end

  def item_params
    params.permit(:name, :description, :price)
  end

  def render_not_found_response(exception)
    render json: { error: "#{exception.model} not found" }, status: :not_found
  end


end
