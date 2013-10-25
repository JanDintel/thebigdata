require 'spec_helper'

describe ApiService do
  let(:uri)         { "http://opendata.cbs.nl/OData3StatlineCatalogService/Catalog/" }
  let(:api_service) { described_class.new(uri) }

  it 'initializes the ApiService' do
    expect(api_service).to be_an_instance_of(ApiService)
  end

  it 'returns the CBS catagory index' do
  end
end
