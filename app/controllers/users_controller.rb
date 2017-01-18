class UsersController < ApplicationController
  def create
    CreateUserTransaction.call(params[:user]) do |m|
      m.success do |value|
        render inline: 'Success'
      end

      m.failure :validate do |error|
        render inline: 'Validation error'
      end

      m.failure do |error|
        render inline: 'Something went wrong'
      end
    end
  end

  def show
    render json: users[params[:id]]
  end

  private

  def users
    @users ||= UserRepository.new(ROM.env)
  end
end
