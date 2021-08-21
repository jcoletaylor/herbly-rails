# frozen_string_literal: true

class CreateHerbs < ActiveRecord::Migration[6.0]
  def change
    create_table :herbs do |t|
      t.string :name, null: false, unique: true
      t.references :herb_category, null: false, foreign_key: true
      t.string :pinyin
      t.string :hanzi
      t.string :latin
      t.string :pharm_latin
      t.string :common_english

      t.timestamps
    end
    add_index :herbs, :name
    add_index :herbs, :pinyin
    add_index :herbs, :hanzi
    add_index :herbs, :latin
    add_index :herbs, :pharm_latin
    add_index :herbs, :common_english
  end
end
