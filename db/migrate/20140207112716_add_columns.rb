class AddColumns < ActiveRecord::Migration
  def change
  	add_column :users, :bus_id, :integer
  	add_column :users, :halt_id, :integer
  	add_column :users, :address, :text
  	add_column :users, :job_type, :string
  end
end
