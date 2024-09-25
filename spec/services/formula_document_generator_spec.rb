# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'FormulaDocumentGenerator' do
  def load_herbs_and_formulas
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

  describe 'document generation from formula' do
    let(:expected_document) { Rails.root.join('spec', 'fixtures', 'zhi-gan-cao-tang.md').read }

    it 'is able to create a document from a complete formula' do
      load_herbs_and_formulas
      formula = Formula.first
      document = FormulaDocumentGenerator.new(formula).generate
      expect(document).to eq(expected_document)
    end
  end
end
