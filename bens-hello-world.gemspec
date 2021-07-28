require_relative 'lib/bens/hello/world/version'

Gem::Specification.new do |spec|
  spec.name          = "bens-hello-world"
  spec.version       = Bens::Hello::World::VERSION
  spec.authors       = ["BK"]
  spec.email         = ["ben.chenathara@gmail.com"]

  spec.summary       = %q{This is a pure dummy gem. Hello world.}
  spec.description   = %q{This is a pure dummy gem. Hello world. We wanna test out github actions and publishing ruby gems.}
  spec.homepage      = "https://benkoshy.github.io/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage.to_s
  spec.metadata["changelog_uri"] = spec.homepage.to_s

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
