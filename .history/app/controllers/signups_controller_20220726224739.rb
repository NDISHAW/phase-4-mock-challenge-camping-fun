class SignupsController < ApplicationController
  def create
    signups = Signup.creat(params[:id])
    if signups
  end
end
