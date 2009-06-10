require File.join(File.dirname(__FILE__), "/../spec_helper.rb")


describe AdminController do
  before(:each) do
    @admin_controller = AdminController.new
  end

  describe "Routes" do
    it "should map routes properly" do
      params_from(:get, "/admin").should == {:controller => "admin", :action => "index"}
      params_from(:post, "/admin/login").should == {:controller => "admin", :action => "login"}
    end
  end

  it "should redirect to homepage if successfully logged in" do
    post :login, :username => "test", :password => "test123"
    session[:logged_in].should be_true
    response.should redirect_to people_path
  end


  it "should redirect to login page if unsuccessful" do
    post :login, :username => "invalid", :password => "invalid"
    session[:logged_in].should be_nil
    response.should redirect_to admin_path
    flash[:notice].should == "Incorrect username/password"
  end

  it "should redirect to home page if logged out" do
    session[:logged_in] = true
    get :logout
    session[:logged_in].should be_nil
    response.should redirect_to people_path
  end




end

