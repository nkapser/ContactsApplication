class CreateContactDetails < ActiveRecord::Migration
  def self.up
    create_table :contact_details do |t|
      t.string :steet_address, :area, :city, :state
      t.integer :pincode
      t.integer :business_id
    end
  end

  def self.down
    drop_table :contact_details
  end
end
