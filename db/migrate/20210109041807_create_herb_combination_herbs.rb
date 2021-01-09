class CreateHerbCombinationHerbs < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_combination_herbs do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :herb_combination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
