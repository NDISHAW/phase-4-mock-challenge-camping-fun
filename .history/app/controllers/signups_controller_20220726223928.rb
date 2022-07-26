class SignupsController < ApplicationController
  def create
    signups = Signup.find_by(params[:id])
    render json: signups, status: :created
  end
end
