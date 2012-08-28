# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pastehub"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kiyoka Nishiyama"]
  s.date = "2012-08-28"
  s.description = "PasteHub is cloud-based cross-platform clipboard sync."
  s.email = "kiyoka@sumibi.org"
  s.executables = ["pastehub-clientDump", "pastehub-clientPost", "pastehub-clientSync"]
  s.extra_rdoc_files = [
    "README.txt"
  ]
  s.files = [
    "README.txt",
    "Rakefile",
    "VERSION.yml",
    "bin/pastehub-clientDump",
    "bin/pastehub-clientPost",
    "bin/pastehub-clientSync",
    "lib/pastehub.rb",
    "lib/pastehub/auth.rb",
    "lib/pastehub/client.rb",
    "lib/pastehub/config.rb",
    "lib/pastehub/localdb.rb",
    "lib/pastehub/macosx.rb",
    "lib/pastehub/masterdb.rb",
    "lib/pastehub/store.rb",
    "lib/pastehub/util.rb",
    "server/masterdb.rb",
    "server/notifier.rb"
  ]
  s.homepage = "http://github.com/kiyoka/pastehub"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "PasteHub is cloud-based cross-platform clipboard sync."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end

