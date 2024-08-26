*** Settings ***
Documentation     Example test suite using Robot Framework and SeleniumLibrary
Library           SeleniumLibrary

*** Variables ***
${BROWSER}               chrome
${URL}                   https://www.example.com
${CHROMEDRIVER_PATH}     C:/Tools/WebDrivers/chromedriver.exe
${CHROME_BINARY_PATH}    C:/Program Files/Google/Chrome/Application/chrome.exe

*** Test Cases ***
Open Example.org
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER_PATH}    options=add_argument("--binary-location=${CHROME_BINARY_PATH}")
    Set Selenium Implicit Wait    10s
    Set Browser Implicit Wait    10s
    Maximize Browser Window
    Title Should Be    Example Domain
    Capture Page Screenshot
    Close Browser