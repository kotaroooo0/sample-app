# -*- encoding: utf-8 -*-
# stub: guard-rspec 4.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-rspec".freeze
  s.version = "4.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thibaud Guillaume-Gentil".freeze]
  s.date = "2014-07-23"
  s.description = "Guard::RSpec automatically run your specs (much like autotest).".freeze
  s.email = "thibaud@thibaud.gg".freeze
  s.homepage = "https://rubygems.org/gems/guard-rspec".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Guard gem for RSpec".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<rspec>.freeze, ["< 4.0", ">= 2.14"])
      s.add_development_dependency(%q<bundler>.freeze, ["< 2.0", ">= 1.3.5"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.1"])
      s.add_development_dependency(%q<launchy>.freeze, ["~> 2.4"])
    else
      s.add_dependency(%q<guard>.freeze, ["~> 2.1"])
      s.add_dependency(%q<rspec>.freeze, ["< 4.0", ">= 2.14"])
      s.add_dependency(%q<bundler>.freeze, ["< 2.0", ">= 1.3.5"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
      s.add_dependency(%q<launchy>.freeze, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<guard>.freeze, ["~> 2.1"])
    s.add_dependency(%q<rspec>.freeze, ["< 4.0", ">= 2.14"])
    s.add_dependency(%q<bundler>.freeze, ["< 2.0", ">= 1.3.5"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
    s.add_dependency(%q<launchy>.freeze, ["~> 2.4"])
  end
end
