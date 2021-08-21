# frozen_string_literal: true

class RenameDoseToDosageInHerbDosage < ActiveRecord::Migration[6.0]
  def change
    change_table :herb_dosages do |t|
      t.rename :dose, :dosage
    end
  end
end
