# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'employ_crawler/version'

Gem::Specification.new do |spec|
  spec.name          = "employ_crawler"
  spec.version       = EmployCrawler::VERSION
  spec.authors       = ["Kimi"]
  spec.email         = ["kimigao1986@gmail.com"]
  spec.description   = %q{为女朋友量身打造，抓取指定网站发布的招聘信息}
  spec.summary       = %q{抓取招聘信息}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", ">= 1.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
