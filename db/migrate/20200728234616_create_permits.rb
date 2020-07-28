class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|

      t.timestamps null: false
    end
  end
end
