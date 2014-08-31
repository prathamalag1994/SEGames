class AddGrankToSes < ActiveRecord::Migration
  def change
    add_column :ses, :grank, :integer
  end
end
