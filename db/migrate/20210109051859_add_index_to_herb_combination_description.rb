# frozen_string_literal: true

class AddIndexToHerbCombinationDescription < ActiveRecord::Migration[6.0]
  def change
    change_table :herb_combinations do |t|
      t.index :description, unique: true
    end
  end
end
