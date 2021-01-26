class RebuildView
    def self.refresh
        Scenic.database.refresh_materialized_view(:search_results, concurrently: false, cascade: false)
    end