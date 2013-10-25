require 'open-uri' # Nokogiri::XML(open())

class CatalogueServiceRequest
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def self.index(url)
    new(url).index
  end

  def index
    arg = []
    response_document.xpath('//xmlns:workspace//xmlns:collection//atom:title').each { |n| arg << n.text }
    arg
  end

  private

  def response_document
    @request ||= request
  end

  def request
    Nokogiri::XML(open(url))
  end
end
