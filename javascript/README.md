# Javascript example

### Tested setup

```
macOS Monterey
12.6
```
```
node -v
v18.9.0
```
```
Appium server (latest)
node node_modules/appium/ -v
1.22.3
```

### Install dependencies

```
# install Appium locally
npm install
```

### Run ESLint static code analysis

```
npm run lint
```

### Testing with mocha

```
npm run test
```
Example:
```
> test@1.0.0 test
> mocha test/specs/*.js

  Appium server
[Appium] Welcome to Appium v1.22.3
[Appium] Appium REST http interface listener started on 0.0.0.0:4723
(node:13677) ExperimentalWarning: The Fetch API is an experimental feature. This feature could change at any time
(Use `node --trace-warnings ...` to show where the warning was created)
[HTTP] --> GET /wd/hub/status
[HTTP] {}
[debug] [GENERIC] Calling AppiumDriver.getStatus() with args: []
[debug] [GENERIC] Responding to client with driver.getStatus() result: {"build":{"version":"1.22.3"}}
[HTTP] <-- GET /wd/hub/status 200 6 ms - 68
[HTTP]
    ✔ should be running (59ms)
[HTTP] Waiting until the server is closed
[HTTP] Received server close event

  1 passing (124ms)
```
