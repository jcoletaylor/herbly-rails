class FormulaContraindicationsController < ApplicationController
  
  before_action :set_formula_contraindication, only: [:show]

  # GET /formula_contraindications
  # GET /formula_contraindications.json
  def index
    @formula_contraindications = FormulaContraindication.all
  end

  # GET /formula_contraindications/1
  # GET /formula_contraindications/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_contraindication
      @formula_contraindication = FormulaContraindication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_contraindication_params
      params.require(:formula_contraindication).permit(:formula_id, :contraindication)
    end
end
