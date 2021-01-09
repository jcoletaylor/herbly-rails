require_relative 'herb_loader'
require_relative 'formula_loader'

module Loader
    class Main
        attr_accessor :herb_directory_path
        attr_accessor :formula_directory_path
        
        def initialize
            self.herb_directory_path = File.join(Rails.root, "db/data/herbs")
            self.formula_directory_path = File.join(Rails.root, "db/data/formulas")
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
    end
end