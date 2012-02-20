class AddUserIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :user_id, :integer, :nil => false
  end
end
