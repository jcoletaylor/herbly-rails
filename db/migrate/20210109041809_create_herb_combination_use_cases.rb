# frozen_string_literal: true

class CreateHerbCombinationUseCases < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_combination_use_cases do |t|
      t.references :herb_combination, null: false, foreign_key: true
      t.text :use_case

      t.timestamps
    end
  end
end
