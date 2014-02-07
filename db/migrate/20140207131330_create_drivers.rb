class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
       t.string :driver_licence
      t.timestamps
    end
  end
end
