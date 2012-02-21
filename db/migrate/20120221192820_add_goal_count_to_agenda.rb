class AddGoalCountToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :goals_count, :integer, :default => 0
  end
end
