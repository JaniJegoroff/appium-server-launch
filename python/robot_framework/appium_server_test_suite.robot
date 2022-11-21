*** Settings ***
Resource          appium_server_keywords.resource
Test Setup        Launch appium server
Test Teardown     Stop appium server

*** Test Cases ***
Appium Server Is Up And Running
    Then Appium server should be running
    And Appium server should be listening
    And Appium server http status code should be 200
