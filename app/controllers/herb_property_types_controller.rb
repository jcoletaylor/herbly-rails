# frozen_string_literal: true

class HerbPropertyTypesController < ApplicationController
  before_action :set_herb_property_type, only: [:show]

  # GET /herb_property_types
  # GET /herb_property_types.json
  def index
    @herb_property_types = HerbPropertyType.all
  end

  # GET /herb_property_types/1
  # GET /herb_property_types/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_property_type
    @herb_property_type = HerbPropertyType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_property_type_params
    params.require(:herb_property_type).permit(:name, :description)
  end
end
