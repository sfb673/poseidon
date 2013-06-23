require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Poseidon do

  class CorpusResource

    attr_accessor :identifier, :title, :description

    include Poseidon

    self_uri 'http://example.org/mexico/classes/Resource'
    instance_uri_scheme 'http://example.org/mexico/resources/#{identifier}'

    rdf_type RDF::RDFS::Class

    rdf_property :identifier,  'http://example.org/mexico/classes/Resource#identifier'
    rdf_property :title,       'http://example.org/mexico/classes/Resource#title'
    rdf_property :description, 'http://example.org/mexico/classes/Resource#description'

    puts "RDF property count: %i" % @@rdf_props.size
  end

  class Corpus

    attr_accessor :identifier, :title, :description
    attr_accessor :resources

    include Poseidon

    self_uri 'http://example.com/mexico/classes/Corpus'

  end

  context 'Corpus' do

    before :each do
      @res = CorpusResource.new
      @res.identifier = 'resource1'
      @res.title = "Resource One"
      @res.description = "This is a resource."

    end

    it 'prints pretty RDF' do
      puts CorpusResource.triple_count
      puts "------------"
      puts CorpusResource.to_rdf
      puts CorpusResource.triple_count
      puts "------------"
      puts @res.to_rdf
    end

  end

end
