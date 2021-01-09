require_relative 'base_loader'
require 'json'

class FormulaLoader < BaseLoader
    def load_file(file)
        data = JSON.parse(File.read(file))
        data.deep_transform_keys! do |key|
            key.to_s.underscore.to_sym
        end
    end
end