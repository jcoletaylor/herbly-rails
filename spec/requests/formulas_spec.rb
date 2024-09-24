# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Formulas' do
  before(:all) do
    @herb_names = %w[GanCao RenShen DangShen GuiZhi ShengDiHuang MaiMenDong EJiao HuoMaRen ShengJiang DaZao ZhiFuZi]
    loader = Loader::MainLoader.new
    @herb_names.each do |herb_name|
      loader.load_one_herb(herb_name)
    end
    @formula_names = %w[ZhiGanCaoTang GuiZhiQuShaoYaoJiaFuZitang]
    @formula_names.each do |formula_name|
      loader.load_one_formula(formula_name)
    end
  end

  describe 'GET /formulas' do
    it 'is able to get formulas in response' do
      get formulas_url(limit: 100), as: :json
      expect(response).to have_http_status(:success)
      expect(response.content_type).to match(a_string_including('application/json'))
      json_response = response.parsed_body.deep_symbolize_keys
      response_formula_names = json_response[:data].pluck(:name)
      expect(response_formula_names).to include(*@formula_names)
    end
  end

  describe 'GET /formulas/:id' do
    it 'is able to get a formula with a valid response' do
      formula = Formula.first
      get formula_url(formula), as: :json
      expect(response).to have_http_status(:success)
      expect(response.content_type).to match(a_string_including('application/json'))
      json_response = response.parsed_body.deep_symbolize_keys
      response_formula_name = json_response[:name]
      expect(@formula_names).to include(response_formula_name)
    end
  end
end
