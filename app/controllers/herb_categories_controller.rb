# frozen_string_literal: true

class HerbCategoriesController < ApplicationController
  before_action :set_herb_category, only: [:show]

  # GET /herb_categories
  # GET /herb_categories.json
  def index
    @herb_categories = HerbCategory.all
  end

  # GET /herb_categories/1
  # GET /herb_categories/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_category
    @herb_category = HerbCategory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_category_params
    params.require(:herb_category).permit(:name, :description)
  end
end
