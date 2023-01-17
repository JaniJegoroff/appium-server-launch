# Java example

This example is using the latest JUnit, `JUnit 5` unit testing framework.

### Tested setup

```
macOS Monterey
12.6.3
```
```
Tests assumes `node` path as:
which node
/usr/local/bin/node

node -v
v19.4.0
```
```
mvn -v
Apache Maven 3.8.7 (b89d5959fcde851dcb1c8946a785a163f14e1e29)
```
```
gradle -v
Gradle 7.6
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

### Testing with Maven

```
mvn test
```
Example:
```
<...>
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 3.354 s - in com.test.janijegoroff.junit5.AppiumServerTest
[INFO]
[INFO] Results:
[INFO]
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  9.488 s
[INFO] Finished at: 2023-01-17T23:09:42Z
[INFO] ------------------------------------------------------------------------
```

### Testing with Gradle

```
gradle test
```
Example:
```
<...>
BUILD SUCCESSFUL in 9s
2 actionable tasks: 1 executed, 1 up-to-date
```
