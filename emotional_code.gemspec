# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emotional_code/version'

Gem::Specification.new do |spec|
  spec.name          = "emotional_code"
  spec.version       = EmotionalCode::VERSION
  spec.authors       = ["wataru0225"]
  spec.email         = ["wataru.kikuchi0225@gmail.com"]

  spec.summary       = %q{There is emotion in your code.}
  spec.description   = %q{Note: you should not install in your production application.}
  spec.homepage      = "https://github.com/wataru0225"
  spec.license       = "MIT"

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

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
