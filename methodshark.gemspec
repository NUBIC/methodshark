# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "methodshark"

Gem::Specification.new do |s|
  s.name     = "methodshark"
  s.version  = "0.0.1"
  s.platform = Gem::Platform::RUBY
  s.authors  = ["Michael Feathers", "Paul Friedman"]
  s.email    = ["mfeathers@obtiva.com", "psfriedman@gmail.com"]
  s.date     = %q{2011-04-20}
  s.homepage = "http://github.com/pfriedman/methodshark"
  
  s.add_dependency "flog", "= 2.5.0"

  s.summary     = %q{Determines the point in time when your method jumps the shark}
  s.description = %q{Based on this http://www.stickyminds.com/sitewide.asp?Function=edetail&ObjectType=COL&ObjectId=16679&tth=DYN&tt=siteemail&iDyn=2}

  s.files         = ["lib/methodshark.rb", "lib/tasks/methodshark.rake"]
  s.rdoc_options  = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  
  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
end

