class FormulaAlsoKnownsController < ApplicationController
  
  before_action :set_formula_also_known, only: [:show]

  # GET /formula_also_knowns
  # GET /formula_also_knowns.json
  def index
    @formula_also_knowns = FormulaAlsoKnown.all
  end

  # GET /formula_also_knowns/1
  # GET /formula_also_knowns/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_also_known
      @formula_also_known = FormulaAlsoKnown.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_also_known_params
      params.require(:formula_also_known).permit(:name, :formula_id)
    end
end
