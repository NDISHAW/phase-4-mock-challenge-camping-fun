class SignupsController < ApplicationController
  def create
    signups = Signup.params[:id]
    render json: signups, status: :created
  end
end
