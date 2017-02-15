# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rarch_news/version'

Gem::Specification.new do |spec|
  spec.name          = 'rarch_news'
  spec.version       = RarchNews::VERSION
  spec.authors       = ['Ahmed Khaled']
  spec.email         = ['nemoload@aol.com']

  spec.summary       = 'Get ArchLinux website news.'
  spec.description   = 'This Ruby Gem is created mainly to be called from a\
                        cron job to notify Arch Linux user of the updates \
                        and news written in Arch Linux webiste.'
  spec.homepage      = 'https://nemoload.github.io'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  # else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'nokogiri', '~> 1.7'
  spec.add_runtime_dependency 'rlps'
  spec.add_runtime_dependency 'libnotify', '~> 0.9'
  #spec.add_runtime_dependency 'pony', '~> 1.11'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
end
