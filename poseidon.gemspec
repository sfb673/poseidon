# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "poseidon"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Menke"]
  s.date = "2013-07-17"
  s.description = "POSEIdON is a Ruby gem that \"Pimps Objects with SEmantic InformatiON\", RDF style, suitable for building ontologies."
  s.email = "pmenke@googlemail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "features/poseidon.feature",
    "features/step_definitions/poseidon_steps.rb",
    "features/support/env.rb",
    "lib/poseidon.rb",
    "lib/poseidon/mixins.rb",
    "pkg/poseidon-1.0.0.gem",
    "pkg/poseidon-1.1.1.gem",
    "poseidon.gemspec",
    "spec/corpus_spec.rb",
    "spec/examplecode_spec.rb",
    "spec/poseidon_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "https://github.com/sfb673/poseidon"
  s.licenses = ["LGPL"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "POSEIdON is a Ruby gem that \"Pimps Objects with SEmantic InformatiON\", RDF style, suitable for building ontologies."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<string_utils>, [">= 0"])
      s.add_runtime_dependency(%q<rdf>, [">= 0"])
      s.add_runtime_dependency(%q<rdf-turtle>, [">= 0"])
      s.add_runtime_dependency(%q<rdf-rdfxml>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<string_utils>, [">= 0"])
      s.add_dependency(%q<rdf>, [">= 0"])
      s.add_dependency(%q<rdf-turtle>, [">= 0"])
      s.add_dependency(%q<rdf-rdfxml>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<string_utils>, [">= 0"])
    s.add_dependency(%q<rdf>, [">= 0"])
    s.add_dependency(%q<rdf-turtle>, [">= 0"])
    s.add_dependency(%q<rdf-rdfxml>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

