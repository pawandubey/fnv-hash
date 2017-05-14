# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fnv/hash/version'

Gem::Specification.new do |spec|
  spec.name          = "fnv-hash"
  spec.version       = Fnv::Hash::VERSION
  spec.authors       = ["Pawan Dubey"]
  spec.email         = ["hi@pawandubey.com"]

  spec.summary       = %q{Fowler-Noll-Vo hashing algorithms in Ruby}
  spec.description   = %q{Provides a pure Ruby implementations of the FNV-1
                          and FNV-1a non-cryptographic hash functions.}
  spec.homepage      = "https://github.com/pawandubey/fnv-hash"
  spec.license       = "Apache V2"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
