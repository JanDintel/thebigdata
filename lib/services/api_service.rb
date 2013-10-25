class ApiService
  attr_reader :service

  def initialize(service)
    @service = service
  end

  def self.add(service)
    new(service).add
  end

  def add
    puts 'Hello'
  end
end
