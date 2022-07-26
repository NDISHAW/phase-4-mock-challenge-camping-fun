class SignupsController < ApplicationController
  def create
    signups = Signup.create!(params[:id])
    if signups.valid?
  end
end
