# frozen_string_literal: true

class HerbPropertiesController < ApplicationController
  before_action :set_herb_property, only: [:show]

  # GET /herb_properties
  # GET /herb_properties.json
  def index
    @herb_properties = HerbProperty.all
  end

  # GET /herb_properties/1
  # GET /herb_properties/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_property
    @herb_property = HerbProperty.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_property_params
    params.require(:herb_property).permit(:herb_id, :herb_property_type_id, :precedence_type_id, :property)
  end
end
