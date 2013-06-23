require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Poseidon do

  class Foo
    include Poseidon
    self_uri 'http://example.com/foo'
    rdf_type RDFS::Class
    instance_uri_scheme 'http://example/com/#{id}'

    rdf_property :id, 'http://example.com/foo#id'
    rdf_property :name, 'http://example.com/foo#name'

    attr_accessor :id, :name

  end

  it 'generates RDF for a class' do
    puts "--CLASS RDF--  " + "- "*20
    puts Foo.to_rdf :format => :rdfxml
    puts "- "*20
  end

  it 'generates RDF for an instance' do
    foo = Foo.new
    foo.id = "f1"
    foo.name = "Just a foo."
    puts "--INSTC RDF--  " + "- "*20
    puts foo.to_rdf :format => :rdfxml, :base_uri => "http://x", :prefixes => { :cats => 'http://example.org/' }
    puts "- "*20

  end

end