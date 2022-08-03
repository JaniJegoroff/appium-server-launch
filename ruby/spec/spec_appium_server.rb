# frozen_string_literal: true

require_relative 'spec_helper'

# test class for Appium server
class SpecAppiumServer < Minitest::Spec
  describe 'Appium Server' do
    describe 'launch/close' do
      it 'should launch and close Appium server' do
        res = AppiumServer.start
        refute_nil(res)
        assert_equal('localhost:4723', AppiumServer.url)
        assert_equal(200, AppiumServer.status)
        assert_equal(res, AppiumServer.pid)
        assert(AppiumServer.send(:running?))

        res = AppiumServer.close
        assert_nil(AppiumServer.status)
        assert_empty(res)
      end
    end
  end
end
