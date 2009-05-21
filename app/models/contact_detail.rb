class ContactDetail < ActiveRecord::Base
  has_many :people
  has_many :phone_numbers
end
