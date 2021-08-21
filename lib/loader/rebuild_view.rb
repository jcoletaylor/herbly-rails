# frozen_string_literal: true

module Loader
  class RebuildView
    def self.refresh
      Scenic.database.refresh_materialized_view(:search_results, concurrently: false, cascade: false)
    end
  end
end
