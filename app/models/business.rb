class Business < ActiveRecord::Base
   belongs_to :person
   has_one :contact_detail
end
