class AddPointsToSes < ActiveRecord::Migration
  def change
    add_column :ses, :points, :integer
  end
end
