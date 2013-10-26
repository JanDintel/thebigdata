require 'spec_helper'
require 'filemagic'

describe FormattingHelper do
  let(:xml_file)        { Dir.pwd + '/spec/fixtures/catalogue_service_index.xml' }
  let(:json_file)       { Dir.pwd + '/spec/fixtures/catalogue_service_index.json' }
  let(:xml)             { File.read(Dir.pwd + '/spec/fixtures/catalogue_service_index.xml') }
  let(:format_to_json)  { described_class.format_to_json(xml) }

  describe '.format_to_json' do
    let(:xml)   { '<?xml version="1.0" encoding="utf-8"?><service xml:base="http://opendata.cbs.nl/OData3StatlineCatalogService/Catalog/" xmlns="http://www.w3.org/2007/app" xmlns:atom="http://www.w3.org/2005/Atom"><workspace><atom:title>Default</atom:title><collection href="Featured"><atom:title>Featured</atom:title></collection><collection href="Table_Featured"><atom:title>Table_Featured</atom:title></collection><collection href="Tables"><atom:title>Tables</atom:title></collection><collection href="Themes"><atom:title>Themes</atom:title></collection><collection href="Tables_Themes"><atom:title>Tables_Themes</atom:title></collection></workspace></service>' }
    let(:json)  { '{"service":{"xml:base":"http://opendata.cbs.nl/OData3StatlineCatalogService/Catalog/","xmlns":"http://www.w3.org/2007/app","xmlns:atom":"http://www.w3.org/2005/Atom","workspace":{"title":"Default","collection":[{"href":"Featured","title":"Featured"},{"href":"Table_Featured","title":"Table_Featured"},{"href":"Tables","title":"Tables"},{"href":"Themes","title":"Themes"},{"href":"Tables_Themes","title":"Tables_Themes"}]}}}' }

    it 'returns JSON string' do
      expect(described_class.format_to_json(xml)).to eql(json)
    end
  end

  describe '#write_file' do
    it 'writes the xml to json' do
      expect(FileMagic.new(FileMagic::MAGIC_MIME_TYPE).file(xml_file)).to eql('application/xml') # Test MIME
      described_class.new(xml).write_file
      expect(FileMagic.new(FileMagic::MAGIC_MIME_TYPE).file(json_file)).to eql('text/plain') # Test MIME
      expect(File.extname(json_file)).to eql('.json') # Test extension
    end
  end
end
