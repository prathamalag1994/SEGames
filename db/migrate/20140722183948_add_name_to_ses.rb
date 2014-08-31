class AddNameToSes < ActiveRecord::Migration
  def change
    add_column :ses, :name, :string
  end
end
