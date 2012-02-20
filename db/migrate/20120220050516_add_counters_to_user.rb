class AddCountersToUser < ActiveRecord::Migration
  def change
    add_column :users, :items_count, :integer, :default => 0
    add_column :users, :responses_count, :integer, :default => 0
  end
end
