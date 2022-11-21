*** Settings ***
Resource          appium_server_keywords.resource
Test Setup        Launch appium server
Test Teardown     Stop appium server

*** Test Cases ***
Test Appium Server Is Running
    Then Appium server should be running

Test Appium Server Is Listening
    Then Appium server should be listening

Test Appium Server HTTP Status Code
    Then Appium server http status code should be 200
