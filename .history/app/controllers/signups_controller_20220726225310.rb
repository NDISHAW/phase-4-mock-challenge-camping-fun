class SignupsController < ApplicationController
    
  def create
    signups = Signup.create(params[:id])
  render json: person, status: :created
rescue ActiveRecord::RecordInvalid => invalid
  render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity

  end
end
