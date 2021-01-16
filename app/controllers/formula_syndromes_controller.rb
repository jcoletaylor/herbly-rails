class FormulaSyndromesController < ApplicationController
  
  before_action :set_formula_syndrome, only: [:show]

  # GET /formula_syndromes
  # GET /formula_syndromes.json
  def index
    @formula_syndromes = FormulaSyndrome.all
  end

  # GET /formula_syndromes/1
  # GET /formula_syndromes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_syndrome
      @formula_syndrome = FormulaSyndrome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_syndrome_params
      params.require(:formula_syndrome).permit(:formula_id, :syndrome_id)
    end
end
