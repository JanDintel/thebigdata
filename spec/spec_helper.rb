# Requires all the ruby config files within the /config directory
Dir[File.join('./config/*.rb')].each {|f| require f}

# require 'rspec/core'
# require 'rspec/autorun'

# Requires all the ruby files within the /lib directory and its subdirectories
Dir[File.join('./lib/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.order = "random"
end
