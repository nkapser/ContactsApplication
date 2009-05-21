require File.join(File.dirname(__FILE__), "/../../spec_helper.rb")
require 'person'

describe Person do
  before(:each) do
    @person = Person.new
  end

  it "should test father son relation ship" do
    father = ModelFactory.create_person(:first_name => "father")
    son = ModelFactory.create_person(:first_name => "son")

    son.father = father
    son.save!

    son.father.should == father
  end

  it "should get all the children from father" do
    father = ModelFactory.create_person(:first_name => "father")
    son1 = ModelFactory.create_person(:first_name => "son1")
    son2 = ModelFactory.create_person(:first_name => "son2")

    son1.father = father
    son2.father = father

    son1.save!
    son2.save!

    father.children.should == [son1,son2]
  end

  it "should get the spouse details" do
    husband = ModelFactory.create_person(:first_name => "husband")
    wife = ModelFactory.create_person(:first_name => "wife", :sex => "F")

    husband.wives << wife

    wife.husbands.should == [husband]
  end

  it "should get the contact details of the person" do
    contact_detail = ModelFactory.create_contact_detail(:area => "Pune")
    person = ModelFactory.create_person(:first_name => "person", :contact_detail => contact_detail)
    person.contact_detail.area.should == "Pune"
  end


end

