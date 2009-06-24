class Business < ActiveRecord::Base
   has_one :contact_detail
   belongs_to :person
end
