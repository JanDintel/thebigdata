class QueryRequest
  attr_reader :uri

  def initialize(uri)
    @uri = uri
  end

  def self.request(uri)
    new(uri).request
  end

  def request
  end
end
