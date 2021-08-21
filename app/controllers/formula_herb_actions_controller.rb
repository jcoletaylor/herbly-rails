# frozen_string_literal: true

class FormulaHerbActionsController < ApplicationController
  before_action :set_formula_herb_action, only: [:show]

  # GET /formula_herb_actions
  # GET /formula_herb_actions.json
  def index
    @formula_herb_actions = FormulaHerbAction.all
  end

  # GET /formula_herb_actions/1
  # GET /formula_herb_actions/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_herb_action
    @formula_herb_action = FormulaHerbAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_herb_action_params
    params.require(:formula_herb_action).permit(:formula_herb_id, :formula_named_action_id)
  end
end
