# frozen_string_literal: true

class HerbWarningTypesController < ApplicationController
  before_action :set_herb_warning_type, only: [:show]

  # GET /herb_warning_types
  # GET /herb_warning_types.json
  def index
    @herb_warning_types = HerbWarningType.all
  end

  # GET /herb_warning_types/1
  # GET /herb_warning_types/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_warning_type
    @herb_warning_type = HerbWarningType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_warning_type_params
    params.require(:herb_warning_type).permit(:name)
  end
end
