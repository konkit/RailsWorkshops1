class ProfilesController < ApplicationController

  def index
    @profiles = User.all
  end

  def show
    @profile = User.find( params[:id] )
    @reviews = Review.where(user: @profile).limit(5).decorate
  end
end
