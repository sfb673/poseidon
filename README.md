# POSEIdON

POSEIdON (short for "Pimp your Objects with SEmantic InformatiON") is a small
library that lets you add RDF information to classes and their instances.
It also adds methods `as_rdf` and `to_rdf` to those classes and objects that
can be used to retrieve RDF representations in various formats, based on
the functionality provided by the [RDF gem](http://rubygems.org/gems/rdf).

## How to use this gem

Simply include POSEIdON to classes where you want to use RDF features:

```ruby
class Foo
  include Poseidon
  # etc.
end
```

Now, your class contains a bunch of high-level class and instance methods for
adding RDF triples. Methods for output and serialisation of the resulting RDF
are also added.

### Example

```Ruby
class Foo
  include Poseidon
  self_uri 'http://example.com/foo'
  rdf_type RDFS::Class
  instance_uri_scheme 'http://example/com/#{id}'
end
```

### Setting URIs for classes and their instances

Every class and object needs an URI to identify itself. Two methods (one class
method and one instance method) can get and set this URI:

```Ruby
class Product
  include Poseidon
  self_uri 'http://example.com/products'
end

product_instance = Product.new
product_instance.self_uri 'http://example.com/products/1'
```

If there is a naming convention for all instances of a class (this is usually
the case in Rails and other restful web applications), the class method
`instance_uri_scheme` is provided to set such a naming scheme:

```Ruby
class Product
  include Poseidon
  self_uri 'http://example.com/foo'
  instance_uri_scheme 'http://example.com/foo/#{id}'
```

The value should contain at least one string interpolation (`#{}`) containing
an identifier. This string will be evaluated in the context of the instance
for which an URI should be retrieved. Take care to use single quotes when
setting the instance URI scheme.

### Setting RDF types

You can set RDF type properties for classes:

```Ruby
class Product
  ...
  rdf_type 'http://some/uri'
  ...
end
```

### Instance properties

You can define whether and how attributes of objects are transformed into
RDF triples with the `rdf_property` method.

```Ruby
class Product
  ...
  rdf_property :propertyName, :type, options
  ...
end
```

The __property name__ is the name of the getter method used to retrieve the
value from the object.

The __type__ parameter defines how the predicate of the triple will be
displayed. It can be either a string containing an URI, or a class that
responds to the method `self_uri`.

The __options__ hash will later be used to further control the configuration
and generation of RDF property entries.


### Generate and export RDF

Both class and instances receive two methods for creating RDF data:

`as_rdf` returns an instance of ``RDF::Graph`` containing triples from
all configurations described above.

`to_rdf` takes this graph and exports it to an RDF serialisation format.
Currently, only *ntriples* is supported, more will follow.


## Plans


## Contributing to POSEIdON
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012, 2013 Peter Menke, SFB 673.
See LICENSE.txt for further details.

