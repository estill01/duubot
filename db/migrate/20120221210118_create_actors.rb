class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|

      t.timestamps
    end
  end
end
