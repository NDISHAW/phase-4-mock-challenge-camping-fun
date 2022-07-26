class SignupsController < ApplicationController
  def create
    user = find_user
    render json: item, status: :created
  end
end
