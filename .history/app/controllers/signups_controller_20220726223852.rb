class SignupsController < ApplicationController
  def create
    signups = Signup.params[:]
    render json: signups, status: :created
  end
end
