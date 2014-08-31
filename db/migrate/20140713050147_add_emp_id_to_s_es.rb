class AddEmpIdToSEs < ActiveRecord::Migration
  def change
  	add_column :ses, :empid, :integer
  	add_column :ses, :managerempid, :integer
  	add_column :ses, :bu, :string
  	add_column :ses, :country, :string
  end
end
