require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Poseidon do

  class FooClass
    attr_accessor :id, :a, :b, :c
    include Poseidon
    puts "include. %i" % @@rdf_graph.size
    self_uri 'http://example.com/classes/foo'
    puts "selfuri. %i" % @@rdf_graph.size
    rdf_type RDF::RDFS::Class
    puts "rdftype. %i" % @@rdf_graph.size
    instance_uri_scheme 'http://example.com/instances/foo/#{id}'
    puts "instSch. %i" % @@rdf_graph.size
    rdf_property :a, RDF::URI('http://example.com/classes/a')
    rdf_property :b, 'http://example.com/classes/b'
    rdf_property :c, FooClass
  end

  class BarClass

  end

  puts FooClass.object_id
  puts FooClass.triple_count


  context 'Inclusion' do
    it 'is includable into classes' do
      expect do
        BarClass.class_eval('include Poseidon')
      end.not_to raise_error
    end

    it 'when included, responds to poseidon test method' do
      FooClass.should respond_to :poseidon?
    end
  end


  context 'Class Methods' do

    it 'has a value for its own uri' do
      FooClass.should respond_to :self_uri
      FooClass.self_uri.should_not be nil
    end

    it 'has a scheme for RDF uris of instances' do
      FooClass.should respond_to :instance_uri_scheme
      FooClass.instance_uri_scheme.should_not be nil
    end

  end

  context 'Instance Methods' do

    before :each do
      @foo = FooClass.new
      @foo.id = "fooInstance"
      @foo.a = 'Aloe'
      @foo.b = 'Basil'
      @foo.c = 'Clover'
    end

    it 'has rdf_as in instances' do
      @foo.should respond_to :as_rdf
      @foo.as_rdf.should_not be nil
    end

    it 'has rdf_to in instances' do
      @foo.should respond_to :to_rdf
      @foo.to_rdf.should_not be nil
      puts @foo.to_rdf
    end

  end

  context 'Class RDF export' do

    it 'has an internal RDF object representation' do
      FooClass.should respond_to :as_rdf
      FooClass.as_rdf.should be_kind_of RDF::Graph
      puts FooClass.object_id
      puts FooClass.triple_count
      puts "RDF Graph: %s " % FooClass.as_rdf.size
      FooClass.add_rdf( ['just', 'some', 'test'])
      puts "RDF Graph: %s " % FooClass.as_rdf.size

    end

    it 'has a serialized ntriples RDF representation' do
      FooClass.should respond_to :to_rdf
      puts "RDF:"
      puts FooClass.to_rdf
    end

  end

end
