class MessagesController < ApplicationController

def new
  @user = current_user
  @contact = Contact.find(params[:contact_id])
  @message = @contact.messages.new
end

def create
  @user = current_user
  @contact = Contact.find(params[:contact_id])
  @message = @contact.messages.new(message_params)
  if @contact.save
    redirect_to contact_path(@contact)
  else
    flash.now[:warning] = "Failed to send message"
    render :new
  end
end

  def destroy
    @contact = Contact.find(params[:contact_id])
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to contact_path(@contact)
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body, :user_id, :contact_id)
  end
end
