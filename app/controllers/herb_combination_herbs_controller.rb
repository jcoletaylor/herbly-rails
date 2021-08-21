# frozen_string_literal: true

class HerbCombinationHerbsController < ApplicationController
  before_action :set_herb_combination_herb, only: [:show]

  # GET /herb_combination_herbs
  # GET /herb_combination_herbs.json
  def index
    @herb_combination_herbs = HerbCombinationHerb.all
  end

  # GET /herb_combination_herbs/1
  # GET /herb_combination_herbs/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_combination_herb
    @herb_combination_herb = HerbCombinationHerb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_combination_herb_params
    params.require(:herb_combination_herb).permit(:herb_id, :herb_combination_id)
  end
end
