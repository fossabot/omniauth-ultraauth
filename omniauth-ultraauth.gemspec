
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-ultraauth/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-ultraauth"
  spec.version       = OmniAuth::UltraAuth::VERSION
  spec.authors       = ["Kartikey Tanna"]
  spec.email         = ["tannakartikey@gmail.com"]

  spec.summary       = %q{Omniauth strategy for UltraAuth.}
  spec.description   = %q{Eliminate customer phishing / hijacking and increase user satisfaction with password-less authentication.}
  spec.homepage      = "https://ultraauth.com"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth_openid_connect", "~> 0.3.0"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
