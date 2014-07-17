
# Code here
module RightScale
  class CoolTool
    DEFAULT_FILEPATH = "/var/log/cool_tool/cool_tool.log"
    attr_reader :file_path

    class << self
      attr_accessor :default_filepath
    end

    def initialize(file_path = nil)
      if file_path.nil?
        if self.class.default_filepath.nil?
          @file_path = DEFAULT_FILEPATH
        else
          @file_path = self.class.default_filepath
        end
      elsif file_path.is_a? String
        @file_path = file_path
      else
        raise ArgumentError, "file_path should be a String"
      end
    end

    def expanded_file_path
      File.expand_path(file_path)
    end
  end
end

