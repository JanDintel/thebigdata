class FormattingHelper
  attr_reader :xml

  def initialize(xml)
    @xml = xml
  end

  def self.format_to_json(xml)
    new(xml).format_to_json
  end

  def format_to_json
    Hash.from_xml(xml).to_json
  end

  def write_file
    File.open(Dir.pwd + '/spec/fixtures/catalogue_service_index.json', 'w+') do |file|
      file.write(format_to_json)
    end
  end
end
