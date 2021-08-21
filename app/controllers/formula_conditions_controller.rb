# frozen_string_literal: true

class FormulaConditionsController < ApplicationController
  before_action :set_formula_condition, only: [:show]

  # GET /formula_conditions
  # GET /formula_conditions.json
  def index
    @formula_conditions = FormulaCondition.all
  end

  # GET /formula_conditions/1
  # GET /formula_conditions/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_condition
    @formula_condition = FormulaCondition.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_condition_params
    params.require(:formula_condition).permit(:formula_id, :condition_id)
  end
end
