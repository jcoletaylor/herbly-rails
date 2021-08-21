# frozen_string_literal: true

class FormulaInteractionsController < ApplicationController
  before_action :set_formula_interaction, only: [:show]

  # GET /formula_interactions
  # GET /formula_interactions.json
  def index
    @formula_interactions = FormulaInteraction.all
  end

  # GET /formula_interactions/1
  # GET /formula_interactions/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_interaction
    @formula_interaction = FormulaInteraction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_interaction_params
    params.require(:formula_interaction).permit(:formula_id, :interaction)
  end
end
