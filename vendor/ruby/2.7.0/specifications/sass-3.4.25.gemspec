# -*- encoding: utf-8 -*-
# stub: sass 3.4.25 ruby lib

Gem::Specification.new do |s|
  s.name = "sass".freeze
  s.version = "3.4.25"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Natalie Weizenbaum".freeze, "Chris Eppstein".freeze, "Hampton Catlin".freeze]
  s.date = "2017-07-07"
  s.description = "      Sass makes CSS fun again. Sass is an extension of CSS, adding\n      nested rules, variables, mixins, selector inheritance, and more.\n      It's translated to well-formatted, standard CSS using the\n      command line tool or a web-framework plugin.\n".freeze
  s.email = "sass-lang@googlegroups.com".freeze
  s.executables = ["sass".freeze, "sass-convert".freeze, "scss".freeze]
  s.files = ["bin/sass".freeze, "bin/sass-convert".freeze, "bin/scss".freeze]
  s.homepage = "http://sass-lang.com/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7".freeze)
  s.rubygems_version = "3.1.3".freeze
  s.summary = "A powerful but elegant CSS compiler that makes CSS fun again.".freeze

  s.installed_by_version = "3.1.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.7.6"])
    s.add_development_dependency(%q<redcarpet>.freeze, ["~> 2.3.0"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 5"])
  else
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.7.6"])
    s.add_dependency(%q<redcarpet>.freeze, ["~> 2.3.0"])
    s.add_dependency(%q<minitest>.freeze, [">= 5"])
  end
end
