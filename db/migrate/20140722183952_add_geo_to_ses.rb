class AddGeoToSes < ActiveRecord::Migration
  def change
    add_column :ses, :geo, :string
  end
end
