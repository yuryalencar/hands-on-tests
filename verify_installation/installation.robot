*** Settings ***
Library     SeleniumLibrary 

Documentation       Tests for verify installation
...
...                 Executable tests presents a correct robot, python and selenium installation.

*** Variables ***
${TRELLO_PAGE}      https://trello.com/login
${BROWSER}          chrome

*** Test Cases ***

Test
    Start Test 
    Finish Test 


*** Keywords *** 

Start Test 
    Open Browser        ${TRELLO_PAGE}      ${BROWSER}
    Set Window Size     1080     720
    Set Selenium Implicit Wait     5

Finish Test 
    Capture Page Screenshot 
    Close Browser 