# frozen_string_literal: true

class FormulaModificationsController < ApplicationController
  before_action :set_formula_modification, only: [:show]

  # GET /formula_modifications
  # GET /formula_modifications.json
  def index
    @formula_modifications = FormulaModification.all
  end

  # GET /formula_modifications/1
  # GET /formula_modifications/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_modification
    @formula_modification = FormulaModification.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_modification_params
    params.require(:formula_modification).permit(:formula_modification_set_id, :herb_id, :modification)
  end
end
