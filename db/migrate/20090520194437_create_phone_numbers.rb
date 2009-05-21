class CreatePhoneNumbers < ActiveRecord::Migration
  def self.up
    create_table :phone_numbers do |t|
      t.integer :number
      t.integer :contact_detail_id
    end
  end

  def self.down
    drop_table :phone_numberss
  end
end
