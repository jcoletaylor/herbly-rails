class SymptomsController < ApplicationController
  
  before_action :set_symptom, only: [:show]

  # GET /symptoms
  # GET /symptoms.json
  def index
    @symptoms = Symptom.all
  end

  # GET /symptoms/1
  # GET /symptoms/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_symptom
      @symptom = Symptom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def symptom_params
      params.require(:symptom).permit(:name)
    end
end
