class ContactsController < ApplicationController
  def index
  end
  def create
    @name = params[:name]
    @email = params[:email]
    @text = params[:text]
    ContactMeMailer.message_for_you().deliver_now
  end
end
