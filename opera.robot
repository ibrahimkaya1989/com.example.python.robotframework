*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        opera
${URL}            https://www.example.com
${OPERA_PATH}     C:/Users/ibrahim.kaya/AppData/Local/Programs/Opera/launcher.exe

*** Test Cases ***
Open Opera Browser and Visit Website
    ${capabilities}=    Evaluate    {'browserName': 'opera', 'operaOptions': {'binary': '${OPERA_PATH}'}}
    Open Browser    ${URL}    opera    desired_capabilities=${capabilities}
    Maximize Browser Window
    Title Should Be    Example Domain
    # Other test steps
    Close Browser