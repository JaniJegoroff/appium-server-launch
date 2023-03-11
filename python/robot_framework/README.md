# Python (robot framework) example

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
pyenv -v
pyenv 2.3.15
```
```
pipenv --version
pipenv, version 2023.2.18
```
```
pyenv versions
python 3.11.1
```
```
pip -V
pip 22.3.1
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
```
# install Python dependencies
pipenv install
pipenv shell
```

### Testing with robot framework

```
robot --loglevel ERROR appium_server_test_suite.robot
```
Example:
```
(robot_framework) bash-3.2$ robot --loglevel ERROR appium_server_test_suite.robot
==============================================================================
Appium Server Test Suite
==============================================================================
Appium Server Is Up And Running                                       | PASS |
------------------------------------------------------------------------------
Appium Server Test Suite                                              | PASS |
1 test, 1 passed, 0 failed
==============================================================================
Output:  /Users/janijegoroff/projects/appium-server-launch/python/robot_framework/output.xml
Log:     /Users/janijegoroff/projects/appium-server-launch/python/robot_framework/log.html
Report:  /Users/janijegoroff/projects/appium-server-launch/python/robot_framework/report.html
(robot_framework) bash-3.2$
```
