# -*- encoding: utf-8 -*-
# stub: ridgepole 0.6.5 ruby lib

Gem::Specification.new do |s|
  s.name = "ridgepole"
  s.version = "0.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Genki Sugawara"]
  s.date = "2017-01-13"
  s.description = "Ridgepole is a tool to manage DB schema. It defines DB schema using Rails DSL, and updates DB schema according to DSL."
  s.email = ["sugawara@cookpad.com"]
  s.executables = ["ridgepole"]
  s.files = ["bin/ridgepole"]
  s.homepage = "https://github.com/winebarrel/ridgepole"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Ridgepole is a tool to manage DB schema."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["< 6", ">= 4.2"])
      s.add_runtime_dependency(%q<diffy>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_development_dependency(%q<mysql2>, ["~> 0.3.20"])
      s.add_development_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<rspec-match_fuzzy>, [">= 0.1.3"])
      s.add_development_dependency(%q<erbh>, [">= 0.1.2"])
      s.add_development_dependency(%q<hash_modern_inspect>, [">= 0.1.1"])
      s.add_development_dependency(%q<hash_order_helper>, [">= 0.1.5"])
    else
      s.add_dependency(%q<activerecord>, ["< 6", ">= 4.2"])
      s.add_dependency(%q<diffy>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 3.0.0"])
      s.add_dependency(%q<mysql2>, ["~> 0.3.20"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<rspec-match_fuzzy>, [">= 0.1.3"])
      s.add_dependency(%q<erbh>, [">= 0.1.2"])
      s.add_dependency(%q<hash_modern_inspect>, [">= 0.1.1"])
      s.add_dependency(%q<hash_order_helper>, [">= 0.1.5"])
    end
  else
    s.add_dependency(%q<activerecord>, ["< 6", ">= 4.2"])
    s.add_dependency(%q<diffy>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 3.0.0"])
    s.add_dependency(%q<mysql2>, ["~> 0.3.20"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<rspec-match_fuzzy>, [">= 0.1.3"])
    s.add_dependency(%q<erbh>, [">= 0.1.2"])
    s.add_dependency(%q<hash_modern_inspect>, [">= 0.1.1"])
    s.add_dependency(%q<hash_order_helper>, [">= 0.1.5"])
  end
end
