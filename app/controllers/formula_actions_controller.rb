# frozen_string_literal: true

class FormulaActionsController < ApplicationController
  before_action :set_formula_action, only: [:show]

  # GET /formula_actions
  # GET /formula_actions.json
  def index
    @formula_actions = FormulaAction.all
  end

  # GET /formula_actions/1
  # GET /formula_actions/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_action
    @formula_action = FormulaAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_action_params
    params.require(:formula_action).permit(:formula_id, :formula_named_action_id)
  end
end
