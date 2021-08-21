# frozen_string_literal: true

class HerbActionIndicationsController < ApplicationController
  before_action :set_herb_action_indication, only: [:show]

  # GET /herb_action_indications
  # GET /herb_action_indications.json
  def index
    @herb_action_indications = HerbActionIndication.all
  end

  # GET /herb_action_indications/1
  # GET /herb_action_indications/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_action_indication
    @herb_action_indication = HerbActionIndication.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_action_indication_params
    params.require(:herb_action_indication).permit(:herb_action_id, :indication)
  end
end
