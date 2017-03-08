class Api::V1::SessionsController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    
    if user && user.authenticate(params[:password])
      render json: {token: Auth.create_token({username: user.username, id: user.id, email: user.email})}
    else
      render json: {errors: {message: 'Username of password incorrect'}}, status: 500
    end
  end

end
