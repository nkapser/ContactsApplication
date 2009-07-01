module PeopleHelper
  def add_business_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :businesses, :partial => 'business', :object => Business.new
    end
  end
end