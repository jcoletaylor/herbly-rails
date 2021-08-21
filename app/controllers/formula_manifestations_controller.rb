# frozen_string_literal: true

class FormulaManifestationsController < ApplicationController
  before_action :set_formula_manifestation, only: [:show]

  # GET /formula_manifestations
  # GET /formula_manifestations.json
  def index
    @formula_manifestations = FormulaManifestation.all
  end

  # GET /formula_manifestations/1
  # GET /formula_manifestations/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_manifestation
    @formula_manifestation = FormulaManifestation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_manifestation_params
    params.require(:formula_manifestation).permit(:formula_id, :tongue, :tongue_coat, :pulse)
  end
end
