class CreateBusinesses < ActiveRecord::Migration
  def self.up
    create_table :businesses do |t|
      t.string :name, :description
      t.integer :person_id
    end
  end

  def self.down
  end
end
