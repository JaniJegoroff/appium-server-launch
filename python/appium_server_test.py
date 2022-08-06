"""Appium server tests"""

def test_appium_server_running(appium_server):
    """test Appium server is running"""

    assert appium_server.is_running

def test_appium_server_listening(appium_server):
    """test Appium server is listening"""

    assert appium_server.is_listening
