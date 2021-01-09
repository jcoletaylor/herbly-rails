require_relative 'base_loader'
require 'json'
module Loader
    class FormulaLoader < Loader::Base
        def load_file(file)
            data = JSON.parse(File.read(file))
            data.deep_transform_keys! do |key|
                key.to_s.underscore.to_sym
            end
        end
    end
end