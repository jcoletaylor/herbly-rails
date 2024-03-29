# frozen_string_literal: true

class CreateHerbActionAnnotations < ActiveRecord::Migration[6.0]
  def change
    create_table :herb_action_annotations do |t|
      t.references :herb_action, null: false, foreign_key: true
      t.text :annotation

      t.timestamps
    end
  end
end
