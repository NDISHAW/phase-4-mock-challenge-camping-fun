class SignupsController < ApplicationController
  def create
    signups = Signup.find_by(params[:id])
    if signups.valid?
        render json: signups, status: :created
    else
        
    end
  end
end
