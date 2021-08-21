# frozen_string_literal: true

class FormulaHerbsController < ApplicationController
  before_action :set_formula_herb, only: [:show]

  # GET /formula_herbs
  # GET /formula_herbs.json
  def index
    @formula_herbs = FormulaHerb.all
  end

  # GET /formula_herbs/1
  # GET /formula_herbs/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_herb
    @formula_herb = FormulaHerb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_herb_params
    params.require(:formula_herb).permit(:formula_id, :herb_id, :dosage)
  end
end
