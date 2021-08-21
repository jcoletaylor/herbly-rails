# frozen_string_literal: true

class HerbCombinationsController < ApplicationController
  before_action :set_herb_combination, only: [:show]

  # GET /herb_combinations
  # GET /herb_combinations.json
  def index
    @herb_combinations = HerbCombination.all
  end

  # GET /herb_combinations/1
  # GET /herb_combinations/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_combination
    @herb_combination = HerbCombination.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_combination_params
    params.require(:herb_combination).permit(:description)
  end
end
