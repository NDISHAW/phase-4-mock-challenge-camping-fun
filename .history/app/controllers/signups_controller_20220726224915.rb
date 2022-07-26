class SignupsController < ApplicationController
  def create
    signups = Signup.find_by(params[:id])
    if signups.valid?
        render json: signups, status: :created
    else
        render json: { errors: sign.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
