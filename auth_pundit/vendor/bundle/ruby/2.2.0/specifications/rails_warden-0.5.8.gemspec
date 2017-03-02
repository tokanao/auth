# -*- encoding: utf-8 -*-
# stub: rails_warden 0.5.8 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_warden"
  s.version = "0.5.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel Neighman"]
  s.date = "2014-02-25"
  s.description = "A gem that provides authenitcation via the Warden framework"
  s.email = "has.sox@gmail.com"
  s.extra_rdoc_files = ["LICENSE", "README.textile", "TODO"]
  s.files = ["LICENSE", "README.textile", "TODO"]
  s.homepage = "https://github.com/hassox/rails_warden"
  s.rubygems_version = "2.4.5.1"
  s.summary = "A gem that provides authenitcation via the Warden framework"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<warden>, [">= 1.0.0"])
    else
      s.add_dependency(%q<warden>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<warden>, [">= 1.0.0"])
  end
end
