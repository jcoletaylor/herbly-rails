class HerbDosageTypesController < ApplicationController
  
  before_action :set_herb_dosage_type, only: [:show]

  # GET /herb_dosage_types
  # GET /herb_dosage_types.json
  def index
    @herb_dosage_types = HerbDosageType.all
  end

  # GET /herb_dosage_types/1
  # GET /herb_dosage_types/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_dosage_type
      @herb_dosage_type = HerbDosageType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_dosage_type_params
      params.require(:herb_dosage_type).permit(:name, :description)
    end
end
