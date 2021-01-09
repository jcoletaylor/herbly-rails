require_relative 'base_loader'
require 'json'

module Loader
    class HerbLoader < Loader::Base
        def load_file(file)
            data = JSON.parse(File.read(file))
            data.deep_transform_keys! do |key|
                key.to_s.underscore.to_sym
            end
            herb = create_herb(data)
        end

        def create_herb(data)
            category_name = data[:category]
            if category_name.to_s.strip.length < 1
                category_name = 'unknown'
            end
            category = HerbCategory.find_or_create_by({ name: category_name })
            herb = Herb.where({ name: data[:herb] }).first
            herb_attrs = { 
                name: data[:herb],
                herb_category: category,
                pinyin: data[:names][:pinyin],
                hanzi: data[:names][:hanzi],
                latin: data[:names][:latin],
                pharm_latin: data[:names][:pharmaceutical_latin],
                common_english: data[:names][:common_english].join(', ') 
            }
            if herb
                herb.update!(herb_attrs)
            else
                herb = Herb.create!(herb_attrs)
            end
            herb
        end
    end
end