# frozen_string_literal: true

class CreateFormulas < ActiveRecord::Migration[6.0]
  def change
    create_table :formulas do |t|
      t.string :name, null: false, unique: true
      t.string :pinyin
      t.string :hanzi
      t.string :english
      t.string :common_english

      t.timestamps
    end
    add_index :formulas, :name
    add_index :formulas, :pinyin
    add_index :formulas, :hanzi
    add_index :formulas, :english
    add_index :formulas, :common_english
  end
end
