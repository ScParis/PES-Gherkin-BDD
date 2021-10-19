***Settings***
Documentation           Automation project base file

#_ Community Libraries _#
Library                 Browser
Library                 Collections
Library                 OperatingSystem
Library                 DiffLibrary
Library                 DateTime

################# _  Local Libraries _ #################

Resource                ${EXECDIR}/actions/access/access.robot

***Keywords***
Start Browser Session
    # New Browser     ${HEADLESS}    ${BROWSER}
    New Browser     chromium    False

### -------------------------------------------------- ###

Start Admin Session
    Start Browser Session
    Go To Login Page

Clear LS And Take Screenshot
    Take Screenshot
    LocalStorage Clear

Thinking And Take Screenshot
    [Arguments]        ${TIMEOUT}

    Sleep           ${TIMEOUT}
    Take Screenshot                 fullPage=true
