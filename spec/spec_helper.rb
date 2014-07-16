# Add <proj_root>/lib and current directory into $LOAD_PATH
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rspec'

require 'cool_tool'

RSpec.configure do |config|

  config.around(:each) do |example|
    # Put code here that we need to run before each test
  end

end

