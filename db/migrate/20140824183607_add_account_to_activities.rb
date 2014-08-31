class AddAccountToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :account, :text
  end
end
