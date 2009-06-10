require File.join(File.dirname(__FILE__), "/../spec_helper.rb")

describe Business do
  before(:each) do
    @business = ModelFactory.create_business(:contact_detail => ModelFactory.create_contact_detail(:area => 'Pune'))
  end

  it "should get the contact detail" do
    Business.find(:first).contact_detail.area.should == 'Pune'
  end
end

