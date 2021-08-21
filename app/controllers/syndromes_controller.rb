# frozen_string_literal: true

class SyndromesController < ApplicationController
  before_action :set_syndrome, only: [:show]

  # GET /syndromes
  # GET /syndromes.json
  def index
    @syndromes = Syndrome.all
  end

  # GET /syndromes/1
  # GET /syndromes/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_syndrome
    @syndrome = Syndrome.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def syndrome_params
    params.require(:syndrome).permit(:name)
  end
end
