lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chassis/updater/version"

Gem::Specification.new do |spec|
  spec.name          = "chassis-updater"
  spec.version       = Chassis::Updater::VERSION
  spec.authors       = ["Bronson Quick"]
  spec.email         = ["bronson@bronsonquick.com.au"]

  spec.summary       = %q{A Vagrant plugin that updates Chassis core and extensions automatically for you.}
  spec.homepage      = "https://chassis.io"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Chassis/chassis-updater"
  spec.metadata["changelog_uri"] = "https://github.com/Chassis/chassis-updater"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
