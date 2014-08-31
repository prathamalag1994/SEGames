class AddCrankToSes < ActiveRecord::Migration
  def change
    add_column :ses, :crank, :integer
  end
end
