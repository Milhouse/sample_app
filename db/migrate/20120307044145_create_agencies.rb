class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.integer :federal_id_number
      t.string :name
      t.integer :year_admitted
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.integer :fax
      t.string :website_address
      t.string :contact_name
      t.string :email_address
      t.text :agency_mission

      t.timestamps
    end
    add_index :agencies, :federal_id_number, :unique => true
  end
end
