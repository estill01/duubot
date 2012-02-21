class AddReferencesToGoals < ActiveRecord::Migration
  def change
    change_table :goals do |t|
      t.references :goalable, :polymorphic => true
    end
  end
end
