# frozen_string_literal: true

class AddVectorColumnToFormulas < ActiveRecord::Migration[7.2]
  def change
    add_column :formulas, :embedding, :vector, limit: LangchainrbRails.config.vectorsearch.llm.default_dimensions
  end
end
