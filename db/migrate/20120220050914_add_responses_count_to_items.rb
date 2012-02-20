class AddResponsesCountToItems < ActiveRecord::Migration
  def change
    add_column :items, :responses_count, :integer, :default => 0
  end
end
