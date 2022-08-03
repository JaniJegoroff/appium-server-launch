# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'

# units under test
require_relative '../appium_server'

Minitest::Reporters.use!([Minitest::Reporters::SpecReporter.new, Minitest::Reporters::JUnitReporter.new])
