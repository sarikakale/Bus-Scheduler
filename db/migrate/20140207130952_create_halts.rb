class CreateHalts < ActiveRecord::Migration
  def change
    create_table :halts do |t|
       t.integer :halt_id
       t.integer :bus_id
       t.string :halt_name
      t.timestamps
    end
  end
end
