require File.join(File.dirname(__FILE__), "/../spec_helper.rb")

describe PeopleController do

  context "Routes" do
    it "should get me index page" do
      params_from(:get, "/").should == {:controller => "people", :action => "index"}
    end
  end

  it "should get the person if id is passed" do
    get :index
    response.should be_success
  end

end

