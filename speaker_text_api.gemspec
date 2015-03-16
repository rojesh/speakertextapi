require File.expand_path('../lib/speaker_text_api', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'speaker_text_api'
  s.version     = '0.0.2'
  s.date        = '2015-03-16'
  s.homepage    = 'http://github.com/rojesh/speakertextapi'
  s.summary     = 'A wrapper gem for speakertext api'
  s.description = 'A gem to automate transcription of audio and video media using the SpeakerText service.'
  s.authors     = ['Rojace Shrestha']
  s.email       = 'rojace2011@gmail.com'
  s.platform    = Gem::Platform::RUBY
  s.files       = Dir.glob('{lib,examples}/**/*') + %w[LICENSE README.md]
  s.add_dependency 'uuidtools', '~> 2.1.2'
  s.add_dependency 'httparty', '~> 0.8.1'
  s.require_paths = ["lib"]
end

