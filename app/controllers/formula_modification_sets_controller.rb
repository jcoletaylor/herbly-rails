class FormulaModificationSetsController < ApplicationController
  
  before_action :set_formula_modification_set, only: [:show]

  # GET /formula_modification_sets
  # GET /formula_modification_sets.json
  def index
    @formula_modification_sets = FormulaModificationSet.all
  end

  # GET /formula_modification_sets/1
  # GET /formula_modification_sets/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_modification_set
      @formula_modification_set = FormulaModificationSet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_modification_set_params
      params.require(:formula_modification_set).permit(:formula_id, :purpose)
    end
end
