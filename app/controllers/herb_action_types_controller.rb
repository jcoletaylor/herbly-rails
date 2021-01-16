class HerbActionTypesController < ApplicationController
  
  before_action :set_herb_action_type, only: [:show]

  # GET /herb_action_types
  # GET /herb_action_types.json
  def index
    @herb_action_types = HerbActionType.all
  end

  # GET /herb_action_types/1
  # GET /herb_action_types/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_action_type
      @herb_action_type = HerbActionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_action_type_params
      params.require(:herb_action_type).permit(:name, :description)
    end
end
