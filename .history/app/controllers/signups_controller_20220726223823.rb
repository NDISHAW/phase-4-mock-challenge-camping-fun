class SignupsController < ApplicationController
  def create
    signups = 
    render json: signups, status: :created
  end
end
