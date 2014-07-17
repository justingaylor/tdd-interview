
# Code here
module RightScale
  class CoolTool
    DEFAULT_FILEPATH = "/var/log/cool_tool/cool_tool.log"
    attr_reader :file_path

    def initialize(file_path = DEFAULT_FILEPATH)
      if file_path.is_a? String
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

