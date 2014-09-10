class AddAdminToSes < ActiveRecord::Migration
  def change
    add_column :ses, :admin, :string
  end
end
