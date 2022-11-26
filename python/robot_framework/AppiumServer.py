"""Appium server tests"""

import requests

from appium.webdriver.appium_service import AppiumService

ROBOT_LIBRARY_SCOPE = 'SUITE'

class AppiumServer:
    """Appium server class"""
    def __init__(self):
        self._server = None

    def launch_appium_service(self):
        """handles Appium server setup"""
        self._server = AppiumService()
        self._server.start(node='/usr/local/bin/node',
                          main_script='node_modules/appium',
                          args=['--base-path', '/wd/hub'])

    def stop_appium_service(self):
        """handles Appium server teardown"""
        self._server.stop()

    def assert_appium_server_is_running(self):
        """assert Appium server is running"""
        assert self._server.is_running

    def assert_appium_server_is_listening(self):
        """assert Appium server is listening"""
        assert self._server.is_listening

    def assert_appium_server_http_status_code(self):
        """assert Appium server HTTP status code"""
        request = requests.get('http://127.0.0.1:4723/wd/hub/status', timeout=5)
        assert request.status_code == 200
