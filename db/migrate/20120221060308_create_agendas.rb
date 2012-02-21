class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|

      t.timestamps
    end
  end
end
