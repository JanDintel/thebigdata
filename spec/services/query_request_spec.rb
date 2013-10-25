require 'spec_helper'

describe QueryRequest do
  let(:uri)           { "foo" }
  let(:query_request) { described_class.new(uri) }

  it 'initializes the QueryRequest' do
    expect(query_request).to be_an_instance_of(QueryRequest)
  end
end
