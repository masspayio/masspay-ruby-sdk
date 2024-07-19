=begin
MassPay API

The version of the OpenAPI document: 1.0.0
Contact: info@masspay.io

NOTE: This file is auto generated. Do not edit the file manually.
=end

$:.push File.expand_path("../lib", __FILE__)
require "masspay_ruby_sdk/version"

Gem::Specification.new do |s|
  s.name        = "masspay_ruby_sdk"
  s.version     = MasspayRubySdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["MassPay Inc."]
  s.email       = ["info@masspay.io"]
  s.homepage    = "https://github.com/masspayio/masspay-ruby-sdk"
  s.summary     = "Ruby SDK for MasspayRubySdk"
  s.description = "Ruby SDK for MasspayRubySdk"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
