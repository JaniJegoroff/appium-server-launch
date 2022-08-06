# pylint: disable=redefined-outer-name

"""fixtures"""

import logging
import os

from appium.webdriver.appium_service import AppiumService
import pytest

logging.basicConfig(level=logging.INFO)

@pytest.fixture(scope='session')
def appium_server(node_path, appium_path, appium_server_base_path):
    """handles Appium server setup and teardown"""
    server = AppiumService()
    server.start(node=node_path,
                 main_script=appium_path,
                 args=['--base-path', appium_server_base_path])
    yield server
    server.stop()

@pytest.fixture(scope='session')
def node_path():
    """returns node path"""
    return os.environ.get('NODE_PATH')

@pytest.fixture(scope='session')
def appium_path():
    """returns Appium path"""
    return os.environ.get('APPIUM_PATH')

@pytest.fixture(scope='session')
def appium_server_base_path():
    """returns Appium server base path"""
    return os.environ.get('APPIUM_SERVER_BASE_PATH')
