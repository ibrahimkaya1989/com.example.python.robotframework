*** Settings ***
Documentation     Example test suite using Robot Framework and SeleniumLibrary
Library           SeleniumLibrary

*** Variables ***
${BROWSER}               chrome
${URL}                   https://tr.wikipedia.org/wiki/Anasayfa
${SEARCH_TERM}           Robot Framework
${CHROMEDRIVER_PATH}     C:/Tools/WebDrivers/chromedriver.exe
${CHROME_BINARY_PATH}    C:/Program Files/Google/Chrome/Application/chrome.exe

*** Test Cases ***
Open Google Homepage and Search
    Open Browser    ${URL}    ${BROWSER}    executable_path=${CHROMEDRIVER_PATH}    options=add_argument("--binary-location=${CHROME_BINARY_PATH}")
    Set Selenium Implicit Wait    10s
    Set Browser Implicit Wait    10s
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Input Text      name=search    ${SEARCH_TERM}
    #Click Button    name=btnK
    #Wait Until Page Contains    ${SEARCH_TERM}
    Capture Page Screenshot
    Close Browser