class SignupsController < ApplicationController
  def create
    signups = Signup.
    render json: signups, status: :created
  end
end
