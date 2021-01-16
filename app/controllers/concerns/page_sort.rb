module PageSort
    extend ActiveSupport::Concern
    def build_page_sort_params(model_name)
        model = model_name.to_s.camelize.constantize
        valid_sorts = model.column_names.map { |s| s.to_sym }
        limit = request.params[:limit] || 20
        offset = request.params[:offset] || 0
        sort_by = request.params[:sort_by] ? request.params[:sort_by].to_sym : :created_at
        sort_by = :created_at unless valid_sorts.include?(sort_by)
        sort_order = request.params[:sort_order] ? request.params[:sort_order].to_sym : :asc
        sort_order = :asc unless [:asc, :desc].include?(sort_order)
        order = { sort_by => sort_order }
        @page_sort_params = { limit: limit, offset: offset, order: order }
    end

    def page_sort_params
        @page_sort_params
    end
end