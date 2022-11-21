*** Settings ***
Library         AppiumServer.py

*** Keywords ***
Launch appium server
    Launch Appium Service

Stop appium server
    Stop Appium Service

Appium server should be running
    Assert Appium Server Is Running

Appium server should be listening
    Assert Appium Server Is Listening

Appium server http status code should be 200
    Assert Appium Server Http Status Code
