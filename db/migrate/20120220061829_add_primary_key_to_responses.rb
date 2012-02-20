class AddPrimaryKeyToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :user_id, :integer
    add_column :responses, :item_id, :integer
  end
end
