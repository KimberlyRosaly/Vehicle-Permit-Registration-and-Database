class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :number # ---> (:building + :unit).join | create this behavior in model when initialized/created

      t.string :building
      t.string :unit

      t.integer :user_id #<---USER has many apartments?? IS THIS RIGHT?

      t.timestamps null: false
    end
  end
end
