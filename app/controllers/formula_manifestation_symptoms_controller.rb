class FormulaManifestationSymptomsController < ApplicationController
  
  before_action :set_formula_manifestation_symptom, only: [:show]

  # GET /formula_manifestation_symptoms
  # GET /formula_manifestation_symptoms.json
  def index
    @formula_manifestation_symptoms = FormulaManifestationSymptom.all
  end

  # GET /formula_manifestation_symptoms/1
  # GET /formula_manifestation_symptoms/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formula_manifestation_symptom
      @formula_manifestation_symptom = FormulaManifestationSymptom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def formula_manifestation_symptom_params
      params.require(:formula_manifestation_symptom).permit(:formula_manifestation_id, :symptom_id)
    end
end
