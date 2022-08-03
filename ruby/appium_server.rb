# frozen_string_literal: true

require 'open3'

# AppiumServer class to start and stop Appium server
class AppiumServer
  class << self
    attr_accessor :cmd, :status, :pid

    def start
      if running?
        puts "Appium server already running at #{url}"
      else
        # not working properly without --base-path flag
        @cmd = 'node node_modules/appium --base-path /wd/hub --log-level error'
        @stdin, @stdout, @stderr, wait_thr = Open3.popen3(@cmd)
        [@stdout, @stderr].each do |stream|
          Thread.new do
            until (line = stream.gets).nil?
              puts line
            end
          end
        end

        # TODO: add timeout after few retries
        while Kernel.loop
          break if running?

          puts 'Waiting for Appium server to start'
          sleep 2
        end

        @pid = wait_thr[:pid]
        @pid
      end
    end

    def close
      @status = nil
      puts "Closing process: #{@pid}"
      `kill -9 #{@pid}`
    end

    def url
      # default url
      'localhost:4723'
    end

    private

    def running?
      status_url = "#{url}/wd/hub/status"

      begin
        dev_null = '-o /dev/null'
        http_code = "-w '%{http_code}\n"
        @status = `curl -LI #{status_url} #{dev_null} #{http_code}' -s`.to_i
        @status.eql?(200)
      rescue StandardError => e
        puts e.message
      end
    end
  end
end
