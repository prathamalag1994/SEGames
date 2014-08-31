class AddBurankToSes < ActiveRecord::Migration
  def change
    add_column :ses, :burank, :integer
  end
end
