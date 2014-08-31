class AddPasswordToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :password, :text
  end
end
