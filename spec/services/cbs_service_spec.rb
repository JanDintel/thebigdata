require 'spec_helper'

describe CBSService do
  let(:cbs_service)    { described_class.new('foo') }

  it 'initializes the CBSService' do
    expect(cbs_service).to be_an_instance_of(CBSService)
  end

end
