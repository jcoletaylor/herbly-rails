class HerbActionsController < ApplicationController
  
  before_action :set_herb_action, only: [:show]

  # GET /herb_actions
  # GET /herb_actions.json
  def index
    @herb_actions = HerbAction.all
  end

  # GET /herb_actions/1
  # GET /herb_actions/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb_action
      @herb_action = HerbAction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def herb_action_params
      params.require(:herb_action).permit(:herb_id, :herb_action_type_id)
    end
end
