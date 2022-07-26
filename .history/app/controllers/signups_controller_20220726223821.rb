class SignupsController < ApplicationController
  def create
    sign = 
    render json: sign, status: :created
  end
end
