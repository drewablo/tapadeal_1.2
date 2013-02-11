class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :drink
      t.string :day
      t.integer :bar_id

      t.timestamps
    end
  end
end
