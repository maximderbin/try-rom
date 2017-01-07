class UsersController < ApplicationController
  def show
    render json: users[params[:id]]
  end

  private

  def users
    @users ||= UserRepository.new(ROM.env)
  end
end
