class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.integer :father_id, :mother_id
      t.string :first_name, :last_name, :middle_name, :education, :sex
      t.date :dob
      t.integer :age
      t.integer :contact_detail_id
      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
