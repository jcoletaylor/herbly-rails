# frozen_string_literal: true

class HerbCombinationUseCasesController < ApplicationController
  before_action :set_herb_combination_use_case, only: [:show]

  # GET /herb_combination_use_cases
  # GET /herb_combination_use_cases.json
  def index
    @herb_combination_use_cases = HerbCombinationUseCase.all
  end

  # GET /herb_combination_use_cases/1
  # GET /herb_combination_use_cases/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_combination_use_case
    @herb_combination_use_case = HerbCombinationUseCase.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_combination_use_case_params
    params.require(:herb_combination_use_case).permit(:herb_combination_id, :use_case)
  end
end
