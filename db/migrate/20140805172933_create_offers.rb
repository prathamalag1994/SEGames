class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :title
      t.text :desc
      t.integer :offerid
      t.string :bu
      t.integer :points
      t.boolean :active
      t.string :activity

      t.timestamps
    end
  end
end
