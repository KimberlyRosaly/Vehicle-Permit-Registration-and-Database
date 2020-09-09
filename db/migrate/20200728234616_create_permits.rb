class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.string :number

      t.integer :apartment_id # ASSOCIATION
      t.integer :user_id

      t.string :tenant_name
      t.string :contact_number
      
      t.string :vehicle_plate
      t.string :vehicle_color
      t.string :vehicle_year
      t.string :vehicle_make_model

      t.timestamps null: false
    end
  end
end
