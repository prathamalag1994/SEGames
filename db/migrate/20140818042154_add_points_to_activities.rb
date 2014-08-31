class AddPointsToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :points, :integer
  end
end
