class SignupsController < ApplicationController
  def create
    signups = S
    render json: signups, status: :created
  end
end
