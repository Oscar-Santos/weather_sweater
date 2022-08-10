class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      render json: Api::V1::UsersSerializer.hashed(user)
    else
      render json: {error: 'invalid credentials'}
    end
  end
end
