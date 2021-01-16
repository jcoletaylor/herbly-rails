class HerbDosagesController < ApplicationController
  
  before_action :set_herb_dosage, only: [:show]

  # GET /herb_dosages
  # GET /herb_dosages.json
  def index
    @herb_dosages = HerbDosage.all
  end

  # GET /herb_dosages/1
  # GET /herb_dosages/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_dosage
      @herb_dosage = HerbDosage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_dosage_params
      params.require(:herb_dosage).permit(:herb_id, :herb_dosage_type_id, :dose)
    end
end
