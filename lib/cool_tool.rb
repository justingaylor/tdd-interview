
# Code here
module RightScale
  class CoolTool
    DEFAULT_FILEPATH = "/var/log/cool_tool/cool_tool.log"
    attr_reader :file_path

    def initialize(file_path = DEFAULT_FILEPATH)
      @file_path = file_path
    end

    def expanded_file_path
      File.expand_path(file_path)
    end
  end
end

