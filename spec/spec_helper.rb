require 'simplecov'
SimpleCov.start do
  add_filter "/spec/"
end if ENV["COVERAGE"]

$:.unshift File.expand_path("../../Support/scripts", __FILE__)

# Simulate Textmate environment
ENV['TM_BUNDLE_SUPPORT'] = File.expand_path("../../Support", __FILE__)

require 'coveralls'
Coveralls.wear!

RSpec.configure do |config|
  config.add_setting(
    :fixtures,
    :default => "#{File.dirname(__FILE__)}/fixtures",
    :alias_with => :fixtures
  )
end