# Javascript WebdriverIO example

### Tested setup

```
macOS Monterey
12.5
```
```
Xcode
13.4.1
```
```
node -v
v18.7.0
```
```
Appium server (latest)
node node_modules/appium/ -v
1.22.3
```
```
Device
iPhone SE (15.5) simulator
```

### Install dependencies

```
npm install
```

### Setup iPhone SE simulator

```
# Replace simulator udid with your in wdio.conf.js file
xcrun xctrace list devices | grep 'iPhone SE'
```

### Testing with wdio

```
npm run wdio
```
Example:
```
> test@1.0.0 wdio
> wdio run wdio.conf.js


Execution of 1 workers started at 2022-08-23T20:20:20.475Z

[0-0] RUNNING in Safari - /test/specs/appium_server.js
[0-0] PASSED in Safari - /test/specs/appium_server.js

 "spec" Reporter:
------------------------------------------------------------------
['iPhone SE' iOS undefined #0-0] Running: 'iPhone SE' on iOS undefined executing Safari
['iPhone SE' iOS undefined #0-0] Session ID: eb800519-b8c5-4d93-9df5-3020615a98f1
['iPhone SE' iOS undefined #0-0]
['iPhone SE' iOS undefined #0-0] » /test/specs/appium_server.js
['iPhone SE' iOS undefined #0-0] Appium server
['iPhone SE' iOS undefined #0-0]    ✓ should be running
['iPhone SE' iOS undefined #0-0]
['iPhone SE' iOS undefined #0-0] 1 passing (1s)


Spec Files:	 1 passed, 1 total (100% completed) in 00:00:10
```
