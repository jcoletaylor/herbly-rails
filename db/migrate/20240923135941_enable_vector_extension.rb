# frozen_string_literal: true

class EnableVectorExtension < ActiveRecord::Migration[7.2]
  def change
    # turning off and managing adding extension in the db manually
    # enable_extension "vector"
  end
end
