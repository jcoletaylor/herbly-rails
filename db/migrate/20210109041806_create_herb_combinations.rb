# frozen_string_literal: true

class CreateHerbCombinations < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_combinations do |t|
      t.string :description

      t.timestamps
    end
  end
end
