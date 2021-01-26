class CreateSearchResults < ActiveRecord::Migration[6.0]
  def change
    create_view :search_results, materialized: true
  end
end
