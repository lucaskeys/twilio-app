class ContactsController < ApplicationController
  before_action :find_contact, only: [:show, :edit, :update, :destroy]

def index
  @user = current_user
  @contacts = Contact.all
end

def show
end

def new
  @user = current_user
  @contact = @user.contacts.new
end

def create
  @user = current_user
  @contact = @user.contacts.new(contact_params)
    if @user.save()
      flash.now[:notice] = "You gettin popular!"
      redirect_to contacts_path
    else
      flash.now[:warning] = "Ha! You got a fake number, loser!"
      render :new
    end
  end


def edit
end

def update
  if @contact.update(contact_params)
    flash.now[:notice] = "Contact Successfully updated"
    redirect_to contact_path(@contact)
  else
    flash.now[:warning] = "Failed to update contact"
    render :edit
  end
end



def destroy
  @contact.destroy
  redirect_to contacts_path
end

private
def contact_params
  params.require(:contact).permit(:first_name, :last_name, :phone_number, :user_id)
end

def find_contact
  @contact = Contact.find(params[:id])
  end
end
