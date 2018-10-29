class ContactsController < ApplicationController
  def index
  end
  def create
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @text = params[:text]
    ContactMeMailer.message_for_you(@first_name,@last_name,@text).deliver_now
  end
end
