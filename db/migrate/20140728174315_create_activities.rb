class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :activity
      t.text :desc
      t.integer :empid

      t.timestamps
    end
  end
end
