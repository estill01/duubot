class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|

      t.timestamps
    end
  end
end
