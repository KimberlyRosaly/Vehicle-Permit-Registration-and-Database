class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest #<--for BCRYPT to handle :password
          
      t.timestamps null: false
    end
  end
end
