class SignupsController < ApplicationController
  def create
    signups = Signup.find_by
    render json: signups, status: :created
  end
end
