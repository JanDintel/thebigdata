require 'spec_helper'

describe CBSService do
  let(:cbs_service)    { described_class.new('foo') }

  it 'initializes the CBSService' do
    expect(cbs_service).to be_an_instance_of(CBSService)
  end

  describe '#new_collection_query' do

    it 'initializes a OData::QueryBuilder' do
      expect(cbs_service.new_collection_query).to be_a(OData::QueryBuilder)
    end
  end

  describe '#build_collection_query' do

    it 'returns the scoped Tables query' do
      expect(cbs_service.build_collection_query).to eql('/Tables')
    end
  end
end
