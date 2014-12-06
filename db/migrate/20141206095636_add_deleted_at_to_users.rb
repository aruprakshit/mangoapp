class AddDeletedAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :deleted_at, :datetime
    add_column :users, :archive, :integer
  end
end
