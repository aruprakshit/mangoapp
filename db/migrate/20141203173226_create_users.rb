class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email_id
      t.string :location
      t.string :department
      t.string :designation

      t.timestamps
    end
  end
end
