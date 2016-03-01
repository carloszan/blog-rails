class SessionsController < ApplicationController
  def new
  end

  def create
    author = Author.find_by(email: params[:session][:email].downcase)
    if author && author.authenticate(params[:session][:password])
      log_in author
      redirect_to root_url
    else
      flash[:alert] = "Invalid email/password"
      render :new
    end
  end

  def destroy  
    log_out
    redirect_to root_url
  end
end
