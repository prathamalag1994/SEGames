class AddOrankToSes < ActiveRecord::Migration
  def change
    add_column :ses, :orank, :integer
  end
end
