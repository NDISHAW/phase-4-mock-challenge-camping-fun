class SignupsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  # added rescue_from
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def create
    
    signups = Signup.create!(params[:id])
    render json: signups, status: :created
  end

  def destroy
    signup = Signup.find(params[:id])
    signup.destroy
    head :no_content
  end
  private
  def find_signups
    Signups.find(params[:id])
  end
  def render_not_found_response
    render json: { error: "Signup not found" }, status: :not_found
  end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
