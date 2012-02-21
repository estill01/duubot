class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|

      t.timestamps
    end
  end
end
