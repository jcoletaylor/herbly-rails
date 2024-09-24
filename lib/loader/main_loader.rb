# frozen_string_literal: true

require_relative 'formula_loader'
require_relative 'herb_loader'

module Loader
  class MainLoader
    attr_accessor :herb_directory_path, :formula_directory_path

    def self.load
      loader = MainLoader.new
      loader.load
    end

    def initialize
      self.herb_directory_path = Rails.root.join('db/data/herbs')
      self.formula_directory_path = Rails.root.join('db/data/formulas')
      @herb_loader = Loader::HerbLoader.new(herb_directory_path)
      @formula_loader = Loader::FormulaLoader.new(formula_directory_path)
    end

    def herb_loader
      @herb_loader ||= Loader::HerbLoader.new(herb_directory_path)
      @herb_loader
    end

    def formula_loader
      @formula_loader ||= Loader::FormulaLoader.new(formula_directory_path)
      @formula_loader
    end

    def load
      load_herbs
      load_formulas
    end

    def load_herbs
      loader = Loader::HerbLoader.new(herb_directory_path)
      loader.load
    end

    def load_formulas
      loader = Loader::FormulaLoader.new(formula_directory_path)
      loader.load
    end

    # helpers for test
    def load_one_herb(name)
      file = File.join(herb_loader.data_directory, "#{name}.json")
      herb_loader.load_file(file)
    end

    # helpers for test
    def load_one_formula(name)
      file = File.join(formula_loader.data_directory, "#{name}.json")
      formula_loader.load_file(file)
    end
  end
end
