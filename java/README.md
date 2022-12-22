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
v19.2.0
```
```
mvn -v
Apache Maven 3.8.6 (84538c9988a25aec085021c365c560670ad80f63)
```
```
gradle -v
Gradle 7.6
```
```
Appium server (latest)
node node_modules/appium/ -v
2.0.0-beta.48
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
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 8.242 s - in com.test.janijegoroff.junit5.AppiumServerTest
[INFO]
[INFO] Results:
[INFO]
[INFO] Tests run: 3, Failures: 0, Errors: 0, Skipped: 0
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  11.955 s
[INFO] Finished at: 2022-12-22T23:44:46Z
[INFO] ------------------------------------------------------------------------
```

### Testing with Gradle

```
gradle test
```
Example:
```
<...>
BUILD SUCCESSFUL in 7s
2 actionable tasks: 1 executed, 1 up-to-date
```
