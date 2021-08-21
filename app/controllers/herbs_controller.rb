# frozen_string_literal: true

class HerbsController < ApplicationController
  include PageSort

  before_action :set_herb, only: [:show]
  before_action :set_page_sort_params, only: [:index]

  # GET /herbs
  # GET /herbs.json
  def index
    @herbs_count = query_base.count
    @herbs = query_base
             .limit(page_sort_params[:limit])
             .offset(page_sort_params[:offset])
             .order(page_sort_params[:order])
             .all
  end

  # GET /herbs/1
  # GET /herbs/1.json
  def show; end

  private

  def query_base
    Herb
      .includes(:herb_category)
      .includes(herb_properties: %i[precedence_type herb_property_type])
      .includes(herb_dosages: [:herb_dosage_type])
      .includes(herb_actions: %i[herb_action_type herb_action_annotations herb_action_indications])
      .includes(herb_warnings: [:herb_warning_type])
      .includes(:herb_notes)
      .includes(herb_combinations: %i[herbs herb_combination_use_cases])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_herb
    @herb = query_base.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_params
    params.require(:herb).permit(:name, :herb_category_id, :pinyin, :hanzi, :latin, :pharm_latin, :common_english)
  end

  def set_page_sort_params
    build_page_sort_params(:herb)
  end
end
