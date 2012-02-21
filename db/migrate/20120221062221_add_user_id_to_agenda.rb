class AddUserIdToAgenda < ActiveRecord::Migration
  def change
    add_column :agendas, :user_id, :integer
  end
end
