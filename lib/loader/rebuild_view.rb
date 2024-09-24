# frozen_string_literal: true

module Loader
  module RebuildView
    module_function

    def refresh
      Scenic.database.refresh_materialized_view(:search_results, concurrently: false, cascade: false)
    end
  end
end
