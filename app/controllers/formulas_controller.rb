# frozen_string_literal: true

class FormulasController < ApplicationController
  include PageSort

  before_action :set_formula, only: [:show]
  before_action :set_page_sort_params, only: [:index]

  # GET /formulas
  # GET /formulas.json
  def index
    @formulas_count = query_base.count
    @formulas = query_base
                .limit(page_sort_params[:limit])
                .offset(page_sort_params[:offset])
                .order(page_sort_params[:order])
                .all
  end

  # GET /formulas/1
  # GET /formulas/1.json
  def show; end

  private

  def query_base
    Formula
      .includes(:formula_also_knowns)
      .includes(formula_herbs: [:herb, { formula_herb_actions: [:formula_named_action] }])
      .includes(formula_actions: [:formula_named_action])
      .includes(:syndromes)
      .includes(:conditions)
      .includes(:formula_contraindications)
      .includes(:formula_interactions)
      .includes(:formula_notes)
      .includes(formula_manifestation: [{ formula_manifestation_symptoms: [:symptom] }])
      .includes(formula_modification_sets: [{ formula_modifications: :herb }])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_formula
    @formula = query_base.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_params
    params.require(:formula).permit(:name, :pinyin, :hanzi, :english, :common_english)
  end

  def set_page_sort_params
    build_page_sort_params(:formula)
  end
end
