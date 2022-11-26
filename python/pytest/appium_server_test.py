"""Appium server tests"""

import requests

def test_appium_server_running(appium_server):
    """test Appium server is running"""
    assert appium_server.is_running

def test_appium_server_listening(appium_server):
    """test Appium server is listening"""
    assert appium_server.is_listening

def test_appium_server_http_status_code(appium_server_status_url):
    """test Appium server HTTP status code"""
    request = requests.get(appium_server_status_url, timeout=5)
    assert request.status_code == 200
