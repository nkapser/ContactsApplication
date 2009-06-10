class AdminController < ApplicationController
  def index

  end

  def login
    if(params[:username] == "test" && params[:password] == "test123")
      session[:logged_in] = true
      redirect_to people_path
    else
      flash[:notice] = "Incorrect username/password"
      redirect_to admin_path
    end
  end

  def logout
    session[:logged_in] = nil
    redirect_to people_path
  end
end
