# Python example

### Tested setup

```
macOS Monterey
12.5
```
```
Tests assumes `node` path as:
which node
/usr/local/bin/node

node -v
v18.7.0
```
```
pyenv -v
pyenv 2.3.3
```
```
pyenv versions
python 3.10.6
```
```
pip -V
pip 22.2.2
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
```
# install Python dependencies
pipenv install
pipenv shell
```

### Testing with pytest

```
pytest
```
Example:
```
(python) bash-3.2$ pytest
======================================== test session starts ========================================
platform darwin -- Python 3.10.6, pytest-7.1.2, pluggy-1.0.0
rootdir: /Users/janijegoroff/projects/appium-server-launch/python, configfile: pytest.ini
plugins: env-0.6.2
collected 2 items

appium_server_test.py ..                                                                      [100%]

========================================= 2 passed in 1.05s =========================================
(python) bash-3.2$
```