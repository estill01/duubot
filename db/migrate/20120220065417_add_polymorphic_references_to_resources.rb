class AddPolymorphicReferencesToResources < ActiveRecord::Migration
  def change 
    change_table :responses do |t|
      t.references :respondable, :polymorphic => true
    end
  end
end
