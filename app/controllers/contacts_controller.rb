class ContactsController < ApplicationController
  def show
    render json: contacts[params[:id]]
  end

  private

  def contacts
    @contacts ||= ContactRepository.new(ROM.env)
  end
end
