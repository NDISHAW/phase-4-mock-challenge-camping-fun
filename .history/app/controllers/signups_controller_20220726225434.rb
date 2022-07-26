class SignupsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # added rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def create
    signups = Signup.create(params[:id])
  render json: person, status: :created
rescue ActiveRecord::RecordInvalid => invalid
  render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity

  end
end
