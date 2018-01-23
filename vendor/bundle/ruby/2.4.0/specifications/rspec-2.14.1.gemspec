# -*- encoding: utf-8 -*-
# stub: rspec 2.14.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec".freeze
  s.version = "2.14.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Steven Baker".freeze, "David Chelimsky".freeze]
  s.date = "2013-07-11"
  s.description = "BDD for Ruby".freeze
  s.email = "rspec-users@rubyforge.org".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "http://github.com/rspec".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubyforge_project = "rspec".freeze
  s.rubygems_version = "2.6.13".freeze
  s.summary = "rspec-2.14.1".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec-core>.freeze, ["~> 2.14.0"])
      s.add_runtime_dependency(%q<rspec-expectations>.freeze, ["~> 2.14.0"])
      s.add_runtime_dependency(%q<rspec-mocks>.freeze, ["~> 2.14.0"])
    else
      s.add_dependency(%q<rspec-core>.freeze, ["~> 2.14.0"])
      s.add_dependency(%q<rspec-expectations>.freeze, ["~> 2.14.0"])
      s.add_dependency(%q<rspec-mocks>.freeze, ["~> 2.14.0"])
    end
  else
    s.add_dependency(%q<rspec-core>.freeze, ["~> 2.14.0"])
    s.add_dependency(%q<rspec-expectations>.freeze, ["~> 2.14.0"])
    s.add_dependency(%q<rspec-mocks>.freeze, ["~> 2.14.0"])
  end
end
