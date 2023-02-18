require_relative "lib/paggy/version"

Gem::Specification.new do |spec|
  spec.name        = "paggy"
  spec.version     = Paggy::VERSION
  spec.authors     = ["Paul Anthony McGowan"]
  spec.email       = ["xhostcom@aol.com"]
  spec.homepage    = "https://github.com/xhostcom/paggy"
  spec.summary     = "Pagination Engine for Rails 7"
  spec.description = "Pagination Engine for Rails 7"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.2"
end
