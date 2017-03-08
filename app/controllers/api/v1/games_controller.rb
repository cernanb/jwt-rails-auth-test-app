class Api::V1::GamesController < ApplicationController

  def index
    if logged_in?
      render json: current_user.games
    else
      render json: { error: { message: "You must have a valid token!"} }, status: 500
    end
  end


end
