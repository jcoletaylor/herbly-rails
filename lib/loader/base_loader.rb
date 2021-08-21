# frozen_string_literal: true

class FileNotFound < StandardError
end

module Loader
  class BaseLoader
    attr_accessor :data_directory

    def initialize(data_directory)
      if !Dir.exist?(data_directory)
        raise FileNotFound, "#{data_directory} was not found"
      end

      self.data_directory = data_directory
    end

    def load
      files = Dir.glob(File.join(data_directory, '*.json'))
      files.each do |file|
        load_file(file)
      rescue StandardError => e
        Rails.logger "unable to load #{file} because of #{e}"
      end
    end

    def load_file(file)
      data = get_file_data(file)
      load_data(data)
    end

    def get_file_data(file)
      data = JSON.parse(File.read(file))
      data.deep_transform_keys! do |key|
        key.to_s.underscore.to_sym
      end
      data.deep_transform_values! do |value|
        if value.is_a?(String)
          strip_excess_whitespace(value)
        end
      end
      data
    end

    def strip_excess_whitespace(str)
      str.to_s.strip.gsub(/\s+/, ' ')
    end
  end
end
