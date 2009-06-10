require File.join(File.dirname(__FILE__), "/../spec_helper.rb")

require 'contact_detail'

describe ContactDetail do
  before(:each) do
    @contact_detail = ModelFactory.create_contact_detail
  end

  it "should get the phone number" do
    phone_number1 = ModelFactory.create_phone_number(:number => 123)
    phone_number2 = ModelFactory.create_phone_number(:number => 456)
    @contact_detail.phone_numbers = [phone_number1, phone_number2]
    phone_numbers = ContactDetail.find(:first).phone_numbers
    phone_numbers[0].number.should == 123
    phone_numbers[1].number.should == 456
  end
end

