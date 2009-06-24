require File.join(File.dirname(__FILE__), "/../spec_helper.rb")

describe PeopleController do

  context "Routes" do
    it "should get me index page" do
      params_from(:get, "/").should == {:controller => "people", :action => "index"}
    end

    it "should get me the directory page" do
      params_from(:get, "/directory").should == {:controller => "people", :action => "directory"}
    end
  end

  it "should get the person if id is passed" do
    get :index
    response.should be_success
  end

  it "should get first 20 people in the alphabetical order" do
    people = []
    25.times do |index|
      people << ModelFactory.create_person(:first_name => "first_name_#{index}")
    end

    get :directory, :page => 1
    response.should be_success
    assigns[:people].size.should == 20
  end

  it "should get the matching results for the query when filter is Name" do
    people = []
    22.times do |index|
      people << ModelFactory.create_person(:first_name => "first_name_#{index}")
    end
    22.times do |index|
      people << ModelFactory.create_person(:first_name => "last_name_#{index}")
    end

    get :search, :query => 'first_name', :filter => 'Name', :page => 1
    response.should be_success
    assigns[:results].size.should == 20
  end   

end

