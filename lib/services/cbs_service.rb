require 'ruby_odata'

class CBSService
  CBS_API = "http://opendata.cbs.nl/OData3StatlineCatalogService/Catalog/"

  def initialize(category)
    @category = category
  end

  def new_collection_query
    service = OData::Service.new(CBS_API)
    service.Tables
  end

  def build_collection_query
    new_collection_query.query
  end

  def execute_collection_query
  end
end
