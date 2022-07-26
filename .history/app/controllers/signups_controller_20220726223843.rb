class SignupsController < ApplicationController
  def create
    signups = Signup.params[:user_id]
    render json: signups, status: :created
  end
end
