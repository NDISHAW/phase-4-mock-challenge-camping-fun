class SignupsController < ApplicationController
  def create
    signups = Signup.find_by(params[:id])
    if signup
  end
end
