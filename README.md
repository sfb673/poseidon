# POSEIdON

POSEIdON (short for "Pimp your Objects with SEmantic InformatiON") is a small
library that lets you add RDF information to classes and their instances.
It also adds methods `as_rdf` and `to_rdf` to those classes and objects that
can be used to retrieve RDF representations in various formats, based on
the functionality provided by the [RDF gem](http://rubygems.org/gems/rdf).

## How to use this gem

Simply include POSEIdON to classes where you want to use RDF features:

```` {.Ruby}
class Foo
  include Poseidon
end
````

== Contributing to poseidon
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

== Copyright

Copyright (c) 2013 Peter Menke. See LICENSE.txt for
further details.

