class SignupsController < ApplicationController
  def create
    signups = Signup.find_by(params[:id])
    
  end
end
