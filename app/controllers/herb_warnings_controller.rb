# frozen_string_literal: true

class HerbWarningsController < ApplicationController
  before_action :set_herb_warning, only: [:show]

  # GET /herb_warnings
  # GET /herb_warnings.json
  def index
    @herb_warnings = HerbWarning.all
  end

  # GET /herb_warnings/1
  # GET /herb_warnings/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_warning
    @herb_warning = HerbWarning.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_warning_params
    params.require(:herb_warning).permit(:herb_warning_type_id, :warning)
  end
end
