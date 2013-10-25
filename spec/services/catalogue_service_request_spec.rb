require 'spec_helper'

describe CatalogueServiceRequest do
  let(:url)                          { "http://opendata.cbs.nl/OData3StatlineCatalogService/Catalog/" }
  let(:catalogue_service_request)    { described_class.new(url) }

  it 'initializes the CatalogueServiceRequest' do
    expect(catalogue_service_request).to be_an_instance_of(CatalogueServiceRequest)
  end

  describe '#index' do
    let(:index) { ["Featured", "Table_Featured", "Tables", "Themes", "Tables_Themes"] }

    it 'returns the catalogue_service index of CBS' do
      expect(catalogue_service_request.index).to eql(index)
    end
  end
end
