# Python (pytest) example

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
pyenv -v
pyenv 2.3.9
```
```
pipenv --version
pipenv, version 2022.9.24
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
2.0.0-beta.46
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
(pytest) bash-3.2$ pytest
======================================== test session starts ========================================
platform darwin -- Python 3.11.1, pytest-7.2.0, pluggy-1.0.0
rootdir: /Users/janijegoroff/projects/appium-server-launch/python/pytest, configfile: pytest.ini
plugins: env-0.8.1
collected 3 items

appium_server_test.py ...                                                                     [100%]

========================================= 3 passed in 3.12s =========================================
(pytest) bash-3.2$
```
