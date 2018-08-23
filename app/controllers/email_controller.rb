class EmailController < ApplicationController
  before_action :set_email, only: [:show, :destroy]


  def index

    @emails = Email.all

    end
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.create(email_params)
  end

  def show_mon_sesame
     @emails = Email.find(params[:id])
    respond_to do |format|
      format.html  { redirect_to root_path }
      format.js
  end


  def all_emails
    @emails = Email.all
  end


  def destroy
   @email = Email.destroy(params[:id])
 end


 private



    def set_email
       @email = Email.find(params[:id])
    end

    def email_params
      params.require(:email).permit(:object, :body)
    end

end
