# Java example

This example is using the latest JUnit, `JUnit 5` unit testing framework.

### Tested setup

```
macOS Monterey
12.6.4
```
```
Tests assumes `node` path as:
which node
/usr/local/bin/node

node -v
v19.7.0
```
```
mvn -v
Apache Maven 3.9.0 (9b58d2bad23a66be161c4664ef21ce219c2c8584)
```
```
gradle -v
Gradle 8.0.2
```
```
Appium server (latest)
node node_modules/appium/ -v
2.0.0-beta.57
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
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 7.222 s - in com.test.janijegoroff.junit5.AppiumServerTest
[INFO]
[INFO] Results:
[INFO]
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  14.829 s
[INFO] Finished at: 2023-03-11T23:05:39Z
[INFO] ------------------------------------------------------------------------
```

### Testing with Gradle

```
gradle test
```
Example:
```
<...>
BUILD SUCCESSFUL in 13s
2 actionable tasks: 1 executed, 1 up-to-date
```
