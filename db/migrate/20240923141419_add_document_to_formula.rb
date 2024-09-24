# frozen_string_literal: true

class AddDocumentToFormula < ActiveRecord::Migration[7.2]
  def change
    add_column :formulas, :document, :text
  end
end
