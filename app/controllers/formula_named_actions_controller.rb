class FormulaNamedActionsController < ApplicationController
  
  before_action :set_formula_named_action, only: [:show]

  # GET /formula_named_actions
  # GET /formula_named_actions.json
  def index
    @formula_named_actions = FormulaNamedAction.all
  end

  # GET /formula_named_actions/1
  # GET /formula_named_actions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_named_action
      @formula_named_action = FormulaNamedAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_named_action_params
      params.require(:formula_named_action).permit(:name)
    end
end
