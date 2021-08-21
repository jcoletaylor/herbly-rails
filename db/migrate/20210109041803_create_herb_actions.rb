# frozen_string_literal: true

class CreateHerbActions < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_actions do |t|
      t.references :herb, null: false, foreign_key: true
      t.references :herb_action_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
