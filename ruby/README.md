# Ruby example

### Tested setup

```
macOS Monterey
12.6.3
```
```
node -v
v19.4.0
```
```
ruby -v
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin21]
```
```
Appium server (latest)
node node_modules/appium/ -v
2.0.0-beta.52
```

### Install dependencies

```
# install Appium locally
npm install
```
```
# install Ruby dependencies
gem install bundler
bundle install
```

### Testing via IRB (interactive Ruby shell)

1. Open `IRB`
2. Type `AppiumServer.start`
3. Wait for `Appium` server to start
4. Type `AppiumServer.close`

Example:
```
Janis-MBP:ruby janijegoroff$ irb -r ./appium_server.rb
irb(main):001:0> AppiumServer.start
Waiting for Appium server to start
Waiting for Appium server to start
=> 18032
irb(main):002:0> AppiumServer.close
Closing process: 18032
=> ""
irb(main):003:0> exit
Janis-MBP:ruby janijegoroff$
```

### Testing via browser

1. Launch `Appium` server using `IRB` (see above)
2. Open browser and navigate to
```
http://localhost:4723/wd/hub/status
```
3. Verify you see `Appium` server version
```
{"value":{"build":{"version":"2.0.0-beta.52","git-sha":"b6a4c6ea5f2440d1ce99d2fff0615f54d0c623ba","built":"2023-01-17 23:18:03 +0000"}}}
```

### Testing by running unit tests

1. Run unit tests
```
bundle exec rake
```
Example:
```
/Users/janijegoroff/.rbenv/versions/3.1.2/bin/ruby -w -I"lib:spec" /Users/janijegoroff/.rbenv/versions/3.1.2/lib/ruby/gems/3.1.0/gems/rake-13.0.6/lib/rake/rake_test_loader.rb "spec/spec_appium_server.rb" "spec/spec_helper.rb"
Emptying /Users/janijegoroff/projects/appium-server-launch/ruby/test/reports
Started with run options --seed 14603

Appium Server::launch/close
Waiting for Appium server to start
Waiting for Appium server to start
Closing process: 15955
  test_0001_should launch and close Appium server                 PASS (4.16s)

Finished in 4.15786s
1 tests, 8 assertions, 0 failures, 0 errors, 0 skips
Writing XML reports to /Users/janijegoroff/projects/appium-server-launch/ruby/test/reports
Janis-MBP:ruby janijegoroff$
```
