class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
        t.string :employee_halt
        t.time :employee_arrivation
        t.time :employee_departure
      t.timestamps
    end
  end
end
