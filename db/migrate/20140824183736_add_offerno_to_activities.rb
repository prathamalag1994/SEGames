class AddOffernoToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :offerno, :integer
  end
end
