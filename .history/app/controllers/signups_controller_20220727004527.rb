class SignupsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # added rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def create
    signups = Signup.create!(signup_params)
    render json: signups.activity, status: :created
  end

  def destroy
    signup = Signup.find(params[:id])
    signup.destroy
    head :no_content
  end

  private
  def signup_params
    params.permit(:camper_id, :activity_id, :time)
  end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
