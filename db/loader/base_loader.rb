module Loader
    class Base
        attr_accessor :data_directory
        def initialize(data_directory)
            if !Dir.exist?(data_directory)
                raise "#{data_directory} was not found"
            end
            self.data_directory = data_directory
        end
        def load
            files = Dir.glob(File.join(data_directory, "*.json"))
            files.each do |file|
                begin
                    load_file(file)
                rescue => exception
                    Rails.logger "unable to load #{file} because of #{exception}"
                end
            end
        end
    end
end