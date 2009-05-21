class ModelFactory
  class << self
    

     def create_person(options = {})
       default_options = {
         :first_name => "first",
         :last_name => "last",
         :middle_name => "middle",
         :sex => "M",
         :education => "B.E"
       }

       options = default_options.merge!(options)
       
       Person.create!(options)
     end

     def create_contact_detail(options = {})
       default_options = {
        :steet_address => "street",
        :area => "area",
        :city => "city",
        :state => "state",
        :pincode => "9999"
       }

       options = default_options.merge!(options)

       ContactDetail.create!(options)
     end
  end
end
