class EmailController < ApplicationController



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
    @email.show(:body)
    respond_to do |format|
      format.html
      format.js
  end


  def all_emails
    @emails = Email.all
  end


  def destroy
   @email = Email.destroy(params[:id])
 end


 private



    def set_emails
       @email = Email.find(params[:id])
    end

    def email_params
      params.require(:email).permit(:object, :body)
    end

end
