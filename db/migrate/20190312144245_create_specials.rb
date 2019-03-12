class CreateSpecials < ActiveRecord::Migration[5.1]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :length
      t.text :image
      t.references :comedian, foreign_key: true

      t.timestamps
    end
  end
end
