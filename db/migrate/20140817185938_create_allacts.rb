class CreateAllacts < ActiveRecord::Migration
  def change
    create_table :allacts do |t|
      t.text :name

      t.timestamps
    end
  end
end
