
require 'rspec/core'
require 'rspec/autorun'

# Requires all ruby files within the ./lib/ direcorty and its subdirectories.
Dir[File.join('./lib/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.order = "random"
end
